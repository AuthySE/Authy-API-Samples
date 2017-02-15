clear
echo Making Phone Calls to Provide Authentication Token 
echo
echo Request
echo curl -i "https://api.authy.com/protected/json/call/\$AUTHY_ID?force=true"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl -i "https://api.authy.com/protected/json/call/$AUTHY_ID?force=true" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo
