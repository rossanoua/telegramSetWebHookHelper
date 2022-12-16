#!/usr/bin/env bash

source .bot_env
# variables
ACTIONS=("nothing" "getWebhookInfo" "getUpdates" "getMe" "deleteWebhook" "setWebhook")

echo "Hello, this script is intended to help you to register webhook gor your Telegram bot."
echo "This script is expected to have file '.bot_env' near him itself on your file system."
echo ""
echo "What you want to do this time?:"
ACTIONS_MESSAGE=""
for i in "${!ACTIONS[@]}"; do
  ACTIONS_MESSAGE+="$i. ${ACTIONS[$i]} "
done
echo "${ACTIONS_MESSAGE}"
read -r ACTION
FORM=""
if [[ "$ACTION" -ge 5 ]]; then
  FORM="-F url=https://$HOST"
fi
if [ "$ACTION" != "0" ] ; then
  echo "selected action '${ACTIONS[$ACTION]}'"
  curl "$FORM" https://api.telegram.org/bot"$BOT"/"${ACTIONS[$ACTION]}" | jq
fi

