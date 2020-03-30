clear
echo Sending Phone Verification Request via SMS w/ AUTHY ENDPOINT
echo
echo Request
echo curl "https://api.authy.com/protected/json/email/\$AUTHY_ID"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl -X POST "https://api.authy.com/protected/json/email/$AUTHY_ID?force=true" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | jq
echo

