# This simple example helps to set web-hook for your Telegram bot.

---
## Dependencies
__[curl](https://curl.se/)__ for making requests.  
This project utilize __[jq](https://stedolan.github.io/jq/)__ for pretty printing json in the console.  
---
## How to
### Before you can start
__.bot_env__ file should contain two ENV variables BOT and HOST:
- __BOT__ - your Telegram bot token
- __HOST__ - URL, where your bot lives (without _https://_)  
  Next:
- Clone the repo.
- Make `teleg.sh` executable by running in root of the project: `sudo chmod +x teleg.sh`

Available actions can be easily updated by modifying the ACTIONS array.  
So far the list of the available actions:
- "getWebhookInfo"
- "getUpdates"
- "getMe"
- "deleteWebhook"
- "setWebhook"
