clear
echo Making Phone Calls to Provide Authentication Token 
echo
echo Request
echo curl "http://api.authy.com/protected/json/call/\$AUTHY_ID?api_key=\$AUTHY_API_KEY&force=true"
echo
echo Response
curl -s "http://api.authy.com/protected/json/call/$AUTHY_ID?api_key=$AUTHY_API_KEY&force=true" | underscore print --outfmt pretty
echo
