clear
echo Verifying the Authentication Token
echo
echo Request
echo curl "http://api.authy.com/protected/$AUTHY_API_FORMAT/verify/\$TOKEN/\$AUTHY_ID?api_key=\$AUTHY_API_KEY"
echo
echo Response:
curl -s "http://api.authy.com/protected/$AUTHY_API_FORMAT/verify/$1/$AUTHY_ID?api_key=$AUTHY_API_KEY" | underscore print --outfmt pretty
echo
