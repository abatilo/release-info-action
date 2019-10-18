#!/bin/sh

owner="$INPUT_OWNER"
repo="$INPUT_REPO"

release_json=$(curl https://api.github.com/repos/$owner/$repo/releases)
latest_tag=$(echo "$release_json" | jq -r '.[0].tag_name')
latest_tag_published_at=$(echo "$release_json" | jq -r '.[0].published_at')

echo ::set-output name=latest_tag::"$latest_tag"
echo ::set-output name=latest_tag_published_at::"$latest_tag_published_at"
