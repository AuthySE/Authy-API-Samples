clear
echo Sending SMS with Authentication Token
echo
echo Request
echo curl "http://api.authy.com/protected/\$AUTHY_API_FORMAT/sms/\$AUTHY_ID?api_key=\$AUTHY_API_KEY&force=true"
echo 
echo Response:
curl -s "http://api.authy.com/protected/$AUTHY_API_FORMAT/sms/$AUTHY_ID?api_key=$AUTHY_API_KEY&force=true" | underscore print --outfmt pretty
echo
