{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [80, 80, 1040, 520],
    "gridsize": [15, 15],
    "description": "Timestamp-driven calibrated Pose feature engine.",
    "tags": "pose feature calibration tracking profile dictionary",
    "boxes": [
      {
        "box": {
          "id": "feature-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 25, 520, 24],
          "text": "MT Pose Feature Engine - calibrated raw body features"
        }
      },
      {
        "box": {
          "id": "feature-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 50, 760, 22],
          "text": "Frame timestamps drive calibration, tracking hysteresis, smoothing, and motion energy."
        }
      },
      {
        "box": {
          "id": "feature-in-frame",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [100, 105, 30, 30],
          "comment": "frame dictionary"
        }
      },
      {
        "box": {
          "id": "feature-in-command",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [300, 105, 30, 30],
          "comment": "profile and calibration commands"
        }
      },
      {
        "box": {
          "id": "feature-declarepath",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [600, 108, 185, 22],
          "text": "declarepath ../../javascript"
        }
      },
      {
        "box": {
          "id": "feature-engine-js",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 6,
          "outlettype": ["", "", "", "", "", ""],
          "patching_rect": [100, 215, 215, 22],
          "text": "js mt_pose_feature_engine.js",
          "varname": "pose_feature_engine"
        }
      },
      {
        "box": {
          "id": "feature-loadbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [600, 155, 70, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "feature-init-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [685, 155, 30, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "feature-init-name",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [735, 155, 190, 22],
          "text": "dict_name #0_pose_features"
        }
      },
      {
        "box": {
          "id": "feature-out-dictionary",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [100, 390, 30, 30],
          "comment": "feature dictionary"
        }
      },
      {
        "box": {
          "id": "feature-out-confidence",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [260, 390, 30, 30],
          "comment": "tracking confidence"
        }
      },
      {
        "box": {
          "id": "feature-out-valid",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [420, 390, 30, 30],
          "comment": "tracking valid"
        }
      },
      {
        "box": {
          "id": "feature-out-calibrated",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [560, 390, 30, 30],
          "comment": "calibrated"
        }
      },
      {
        "box": {
          "id": "feature-out-zone",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [700, 390, 30, 30],
          "comment": "inside control zone"
        }
      },
      {
        "box": {
          "id": "feature-out-event",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [860, 390, 30, 30],
          "comment": "calibration and status event"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["feature-in-frame", 0],
          "destination": ["feature-engine-js", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-in-command", 0],
          "destination": ["feature-engine-js", 1],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-loadbang", 0],
          "destination": ["feature-init-trigger", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-init-trigger", 0],
          "destination": ["feature-init-name", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-init-name", 0],
          "destination": ["feature-engine-js", 1],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 0],
          "destination": ["feature-out-dictionary", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 1],
          "destination": ["feature-out-confidence", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 2],
          "destination": ["feature-out-valid", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 3],
          "destination": ["feature-out-calibrated", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 4],
          "destination": ["feature-out-zone", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["feature-engine-js", 5],
          "destination": ["feature-out-event", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      }
    ]
  }
}
