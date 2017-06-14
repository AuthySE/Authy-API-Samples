clear
echo Deleting TwilioAuth SDK User Device
echo
echo Request
echo curl -X DELETE "https://api.authy.com/protected/\$AUTHY_API_FORMAT/sdk/devices/\$AUTHY_DEVICE_ID"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl -X DELETE "https://api.authy.com/protected/$AUTHY_API_FORMAT/sdk/devices/$AUTHY_DEVICE_ID" \
-H "X-Authy-API-Key: $AUTHY_API_KEY"
echo