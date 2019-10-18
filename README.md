# release-info-action
[![Actions Status](https://github.com/abatilo/release-info-action/workflows/ci/badge.svg)](https://github.com/abatilo/release-info-action/actions)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=abatilo/release-info-action)](https://dependabot.com)
[![Latest
release](https://img.shields.io/github/v/release/abatilo/release-info-action?include_prereleases)](https://github.com/abatilo/release-info-action/releases)
[![License](https://img.shields.io/github/license/abatilo/release-info-action)](https://github.com/abatilo/release-info-action/blob/master/LICENSE)

A GitHub Action which fetches information about GitHub releases for you to use.

Example usage
```yaml
on: push

name: ci
jobs:
  latest-version:
    name: Get Latest Release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Get Latest Release
      uses: abatilo/release-info-action@v1.0.0
      with:
        owner: abatilo
        repo: release-info-action
```
