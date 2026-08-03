#!/usr/bin/env python3
"""Guard layout-only edits to Max .maxpat JSON files."""

from __future__ import annotations

import argparse
import copy
import hashlib
import json
import sys
from pathlib import Path
from typing import Any, Iterator


TOLERANCE = 0.01
VERTICAL_TOLERANCE = 6.0


def read_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def iter_patchers(patcher: dict[str, Any], label: str) -> Iterator[tuple[str, dict[str, Any]]]:
    yield label, patcher
    for wrapped in patcher.get("boxes", []):
        box = wrapped.get("box", {})
        nested = box.get("patcher")
        if isinstance(nested, dict):
            yield from iter_patchers(nested, f"{label}/{box.get('id', '?')}")


def strip_layout(document: dict[str, Any]) -> dict[str, Any]:
    result = copy.deepcopy(document)
    for _, patcher in iter_patchers(result["patcher"], "root"):
        for wrapped in patcher.get("boxes", []):
            box = wrapped.get("box", {})
            box.pop("patching_rect", None)
            for key in [key for key in box if key.lower().endswith("color")]:
                box.pop(key)
        for wrapped in patcher.get("lines", []):
            line = wrapped.get("patchline", {})
            line.pop("midpoints", None)
            for key in [key for key in line if key.lower().endswith("color")]:
                line.pop(key)
    return result


def structural_digest(document: dict[str, Any]) -> str:
    payload = json.dumps(
        strip_layout(document), ensure_ascii=False, sort_keys=True, separators=(",", ":")
    ).encode("utf-8")
    return hashlib.sha256(payload).hexdigest()


def counts(document: dict[str, Any]) -> dict[str, int]:
    patchers = list(iter_patchers(document["patcher"], "root"))
    return {
        "patchers": len(patchers),
        "boxes": sum(len(patcher.get("boxes", [])) for _, patcher in patchers),
        "lines": sum(len(patcher.get("lines", [])) for _, patcher in patchers),
    }


def rect(box: dict[str, Any]) -> tuple[float, float, float, float] | None:
    value = box.get("patching_rect")
    if not isinstance(value, list) or len(value) < 4:
        return None
    return tuple(float(part) for part in value[:4])


def port_x(box: dict[str, Any], port: int, count: Any) -> float:
    x, _, width, _ = rect(box) or (0.0, 0.0, 0.0, 0.0)
    if box.get("maxclass") in {"inlet", "outlet"}:
        return x + width / 2
    ports = count if isinstance(count, int) and count > 0 else 1
    return x + 9.5 if ports <= 1 else x + 9.5 + port * (width - 19) / (ports - 1)


def audit(document: dict[str, Any], source: Path) -> list[str]:
    issues: list[str] = []
    for label, patcher in iter_patchers(document["patcher"], source.name):
        boxes = [wrapped.get("box", {}) for wrapped in patcher.get("boxes", [])]
        laid_out = [box for box in boxes if rect(box)]
        by_id = {box.get("id"): box for box in boxes}

        for left, first in enumerate(laid_out):
            ax, ay, aw, ah = rect(first) or (0, 0, 0, 0)
            for second in laid_out[left + 1 :]:
                bx, by, bw, bh = rect(second) or (0, 0, 0, 0)
                overlap_x = min(ax + aw, bx + bw) - max(ax, bx)
                overlap_y = min(ay + ah, by + bh) - max(ay, by)
                if overlap_x > TOLERANCE and overlap_y > TOLERANCE:
                    issues.append(f"{label}: {first.get('id')} overlaps {second.get('id')}")

        for wrapped in patcher.get("lines", []):
            line = wrapped.get("patchline", {})
            source_ref = line.get("source", [])
            destination_ref = line.get("destination", [])
            if len(source_ref) < 2 or len(destination_ref) < 2:
                issues.append(f"{label}: malformed patchline endpoint")
                continue
            source_box = by_id.get(source_ref[0])
            destination_box = by_id.get(destination_ref[0])
            if not source_box or not destination_box or not rect(source_box) or not rect(destination_box):
                issues.append(f"{label}: missing laid-out endpoint {source_ref[0]} -> {destination_ref[0]}")
                continue
            midpoints = line.get("midpoints", [])
            if not isinstance(midpoints, list) or len(midpoints) % 2:
                issues.append(f"{label}: malformed midpoints {source_ref[0]} -> {destination_ref[0]}")
                continue
            sx, sy, _, sh = rect(source_box) or (0, 0, 0, 0)
            _, dy, _, _ = rect(destination_box) or (0, 0, 0, 0)
            points = [
                (port_x(source_box, int(source_ref[1]), source_box.get("numoutlets")), sy + sh)
            ]
            points.extend(
                (float(midpoints[index]), float(midpoints[index + 1]))
                for index in range(0, len(midpoints), 2)
            )
            points.append(
                (port_x(destination_box, int(destination_ref[1]), destination_box.get("numinlets")), dy)
            )
            if any(
                abs(previous[0] - current[0]) > VERTICAL_TOLERANCE
                and abs(previous[1] - current[1]) > TOLERANCE
                for previous, current in zip(points, points[1:])
            ):
                issues.append(f"{label}: diagonal cable {source_ref[0]} -> {destination_ref[0]}")
    return issues


def write_snapshot(patch: Path, output: Path) -> None:
    document = read_json(patch)
    snapshot = {
        "version": 1,
        "structural_sha256": structural_digest(document),
        "counts": counts(document),
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(snapshot, indent=2) + "\n", encoding="utf-8")
    print(f"snapshot: {output}")


def report_issues(issues: list[str]) -> int:
    if not issues:
        print("layout audit: PASS")
        return 0
    for issue in issues:
        print(f"ERROR: {issue}", file=sys.stderr)
    print(f"layout audit: FAIL ({len(issues)} issue(s))", file=sys.stderr)
    return 1


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    snapshot_parser = subparsers.add_parser("snapshot", help="record non-layout structure")
    snapshot_parser.add_argument("patch", type=Path)
    snapshot_parser.add_argument("--output", required=True, type=Path)

    audit_parser = subparsers.add_parser("audit", help="check overlaps and orthogonal cables")
    audit_parser.add_argument("patch", type=Path)

    check_parser = subparsers.add_parser("check", help="verify structure and layout")
    check_parser.add_argument("patch", type=Path)
    check_parser.add_argument("--snapshot", required=True, type=Path)

    args = parser.parse_args()
    if args.command == "snapshot":
        write_snapshot(args.patch, args.output)
        return 0

    document = read_json(args.patch)
    if args.command == "check":
        snapshot = read_json(args.snapshot)
        if snapshot.get("structural_sha256") != structural_digest(document):
            print("ERROR: patch structure changed; cleanup must only change layout", file=sys.stderr)
            return 1
    return report_issues(audit(document, args.patch))


if __name__ == "__main__":
    raise SystemExit(main())
