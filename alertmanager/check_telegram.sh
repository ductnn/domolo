TOKEN="<bot-token>"
ID="<Your group ID>"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="Hello "