#!/usr/bin/env bash

# requires curl & jq

# Big thanks to Purpur for this script that actually works!
# To use the script properly, run it from the project root
GRADLE_PROPERTIES_FILE=gradle.properties
function getProperty() {
  PROP_KEY=$1
  PROP_VALUE=$(cat $GRADLE_PROPERTIES_FILE | grep "$PROP_KEY" | cut -d'=' -f2)
  echo $PROP_VALUE
}

(
set -e
PS1="$"
OLD_PAPER_COMMIT=$(getProperty "oldPaperCommit")
CURRENT_PAPER_COMMIT=$(getProperty "paperCommit")

paper=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/PaperMC/Paper/compare/$OLD_PAPER_COMMIT...$CURRENT_PAPER_COMMIT | jq -r '.commits[] | "PaperMC/Paper@\(.sha[:7]) \(.commit.message | split("\r\n")[0] | split("\n")[0])"')
# By changing the line above to accept any hash instead of HEAD, people have more freedom in updating

updated=""
logsuffix=""
if [ ! -z "paper" ]; then
    logsuffix="$logsuffix\n\nPaper Changes:\n$paper"
    updated="Paper"
fi
disclaimer="Upstream has released updates that appear to apply and compile correctly"

log="${UP_LOG_PREFIX}Updated Upstream ($updated)\n\n${disclaimer}${logsuffix}"

echo -e "$log" | git commit -F -

) || exit 1