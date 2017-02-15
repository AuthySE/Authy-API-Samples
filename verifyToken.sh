clear
echo Verifying the Authentication Token
echo
echo Request
echo curl -i "https://api.authy.com/protected/$AUTHY_API_FORMAT/verify/\$TOKEN/\$AUTHY_ID"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl -i "https://api.authy.com/protected/$AUTHY_API_FORMAT/verify/$1/$AUTHY_ID" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo
