clear
echo Delete a sdk device
echo
echo Request
echo curl -X DELETE "https://api.authy.com/protected/\$AUTHY_API_FORMAT/sdk/devices/\$AUTHY_DEVICE_ID?api_key=\$AUTHY_API_KEY"
echo
echo Response
curl -X DELETE "https://api.authy.com/protected/$AUTHY_API_FORMAT/sdk/devices/$AUTHY_DEVICE_ID?api_key=$AUTHY_API_KEY"
echo