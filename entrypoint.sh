#!/bin/sh

owner="$INPUT_OWNER"
repo="$INPUT_REPO"

release_json=$(curl https://api.github.com/repos/$owner/$repo/releases)
latest_tag=$(echo "$release_json" | jq -r '.[0].tag_name')

echo ::set-output name=latest_tag::"$latest_tag"
