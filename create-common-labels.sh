#!/bin/bash
set -e

# NOTE to create labels for your repo
# by hitting GitHub API v3
#
# https://developer.github.com/v3/issues/labels/#create-a-label

# 1. Create your github PERSONAL ACCESS TOKEN at https://github.com/settings/tokens

# 2. Enter these fields
GH_TOKEN="PERSONAL ACCESS TOKEN"
# If you use GitHub Enterprise, change this to "https://<your_domain>/api/v3"
GH_DOMAIN="https://api.github.com"
SRC_GH_USER="OWNER"
SRC_GH_REPO="REPO"
# Headers used in curl commands
GH_ACCEPT_HEADER="Accept: application/vnd.github.symmetra-preview+json"
GH_AUTH_HEADER="Authorization: Bearer $GH_TOKEN"

# 3. Hit GitHub API after reading labels configuration file
while read line
do
   curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d "$line"
done < labels.conf