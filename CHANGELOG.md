# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][changelog], and this project adheres
to [Semantic Versioning][semver].

## [Unreleased]

### Maintenance

- Require changes to the changelog before merging changes after development.
- Include the packaged plugin as part of the flake package derivation output.
- Remove flake utilities from build inputs for a more minimal configuration.
- Set stable versions of workflow steps with the minimum set of permissions.
- Update packages of dependencies on a frequent schedule for confident tests.
- Start tests on a whim with a workflow dispatch option with testing events.

## [0.1.1] - 2024-12-29

### Fixed

- Separate tests from packaged plugin to differentiate runtime dependencies.

## [0.1.0] - 2024-08-04

### Added

- Find files in near proximities fast with targets that map combos to paths.

### Fixed

- Requirements for options during setup are no longer expected in the types.

### Maintenance

- The MIT license was assigned upon creation of this project and contained code.
- This CHANGELOG was started with initial entries as the repo is being created.
- Some notes were left for maintaining repositiories and related contributions.
- Confirmation in setup for this plugin was gathered with a nice new test suite.
- Perform that same test suite when changes are made to this remote repository.
- Documents of standard practice for tagging a new release is noted maintenance.

<!-- a collection of links -->

[changelog]: https://keepachangelog.com/en/1.1.0/
[semver]: https://semver.org/spec/v2.0.0.html

<!-- a collection of releases -->

[Unreleased]: https://github.com/zimeg/proximity.nvim/compare/v0.1.1...HEAD
[0.1.1]: https://github.com/zimeg/proximity.nvim/compare/v0.1.0...v1.1.1
[0.1.0]: https://github.com/zimeg/proximity.nvim/releases/tag/v0.1.0
