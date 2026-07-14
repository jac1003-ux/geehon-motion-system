# Changelog

All notable project changes are recorded here.

## Unreleased

### Added

- Max Project entry point: `geehon-motion-system.maxproj`
- Responsibility-based `patchers/` structure
- Portable project-relative loading for the hand-tracking web page
- Static checks for project membership, patch integrity, repository structure, and hand-control outlet order
- English and Chinese project documentation

### Changed

- Moved active Input, Mixer, Effect, Control, and DSP modules into dedicated folders
- Moved legacy patchers, experiments, and obsolete generators into `archive/`
- Disabled Max Project auto-organize to preserve the repository structure
- Renamed the third-party hand-tracker README to prevent Max search-path collisions

### Fixed

- Fixed project filename and internal name mismatch
- Removed duplicate project-visible resource filenames
- Corrected `p Hand_control` outlet order so camera-menu `append` messages cannot reach numeric gesture outputs
- Removed user-specific runtime paths from active patchers

## 2026-07-14 - Prototype Baseline

- Imported the working Max/MSP portfolio prototype into Git version control.
