clear
echo Checking for Phone Verification Code
echo
echo Request
echo curl "https://api.authy.com/protected/\$AUTHY_API_FORMAT/phones/verification/check?phone_number=\$USER_PHONE&country_code=\$USER_COUNTRY&verification_code=\$1"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl "https://api.authy.com/protected/$AUTHY_API_FORMAT/phones/verification/check?phone_number=$USER_PHONE&country_code=$USER_COUNTRY&verification_code=$1" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo
