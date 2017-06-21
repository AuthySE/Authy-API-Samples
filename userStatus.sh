clear
echo Retrieving User Status
echo
echo Request
echo curl "https://api.authy.com/protected/\$AUTHY_API_FORMAT/users/\$AUTHY_ID/status?api_key=\$AUTHY_API_KEY"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl http://api.authy.com/protected/$AUTHY_API_FORMAT/users/$AUTHY_ID/status \
-H "X-Authy-API-Key: $AUTHY_API_KEY"
echo