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
# ---------------------------------------------------------


# 3. Hit GitHub API
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"feature","color":"0E8A16", "description":"New feature to implement"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"refactor","color":"dcf252", "description":"Refactor Code or remove dead code"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"spike","color":"FEF2C0", "description":"Spike request"}'

curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"frontend","color":"9ef7f7", "description":"Front-end part to modify"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"backend","color":"884dbc", "description":"Back-end part to modify"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"client","color":"9ef7f7", "description":"Client part to modify"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"server","color":"884dbc", "description":"Server part to modify"}'

curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"highest","color":"E99695", "description":"Highest priority"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"high","color":"E99695", "description":"High priority"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"medium","color":"FEF2C0", "description":"Medium priority"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"low","color":"C5DEF5", "description":"Low priority"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"lowest","color":"C5DEF5", "description":"Lowest priority"}'

curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"0","color":"FBCA04", "description":"Story Point: 0"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"1/2","color":"FBCA04", "description":"Story Point: 1/2"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"1","color":"FBCA04", "description":"Story Point: 1"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"2","color":"FBCA04", "description":"Story Point: 2"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"3","color":"FBCA04", "description":"Story Point: 3"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"5","color":"FBCA04", "description":"Story Point: 5"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"8","color":"FBCA04", "description":"Story Point: 8"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"13","color":"FBCA04", "description":"Story Point: 13"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"20","color":"FBCA04", "description":"Story Point: 20"}'
curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"40","color":"FBCA04", "description":"Story Point: 40"}'

curl -X POST -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels -d '{"name":"BV: 25","color":"34EA71", "description":"Business Value: 25"}'