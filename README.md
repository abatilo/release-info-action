# release-info-action

[![Actions Status](https://github.com/abatilo/release-info-action/workflows/ci/badge.svg)](https://github.com/abatilo/release-info-action/actions)
[![Latest
release](https://img.shields.io/github/v/release/abatilo/release-info-action?include_prereleases)](https://github.com/abatilo/release-info-action/releases)
[![License](https://img.shields.io/github/license/abatilo/release-info-action)](https://github.com/abatilo/release-info-action/blob/master/LICENSE)

A GitHub Action which fetches information about GitHub releases for you to use.

Inputs:

| Name  | Description                   | Required? |
| ----- | ----------------------------- | --------- |
| owner | The user or org for this repo | true      |
| repo  | The name of the repo itself   | true      |

Outputs:

| Name                    | Description                                                                                                       |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------- |
| latest_tag              | The latest release version tag                                                                                    |
| latest_tag_published_at | The ISO8601 timestamp of when this version was released                                                           |
| target_commitish        | Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. |

Example step

```
- name: Get Latest Release
  id: latest_version
  uses: abatilo/release-info-action@v1.3.0
  with:
    owner: abatilo
    repo: release-info-action
```

No other setup is required to use this action.

Example Workflow

```yaml
on: push

name: Example
jobs:
  latest-version:
    name: Get Latest Release
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Get Latest Release
        id: latest_version
        uses: abatilo/release-info-action@v1.3.0
        with:
          owner: abatilo
          repo: release-info-action
      - name: Example of consumption of the output
        env:
          LATEST: ${{ steps.latest_version.outputs.latest_tag }}
          LATEST_DATE: ${{ steps.latest_version.outputs.latest_tag_published_at }}
        run: |
          echo "Version $LATEST was released at $LATEST_DATE"
```

You can see an example of the invocation of this workflow by [clicking here](https://github.com/abatilo/release-info-action/actions?query=workflow%3AExample)
