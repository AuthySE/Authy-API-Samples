clear
echo Getting Phone Information with Phone Intelligence API
echo
echo Request
echo curl "https://api.authy.com/protected/\$AUTHY_API_FORMAT/phones/info?country_code=\$USER_COUNTRY&phone_number=\$USER_PHONE"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl "https://api.authy.com/protected/$AUTHY_API_FORMAT/phones/info?country_code=$USER_COUNTRY&phone_number=$USER_PHONE" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo
