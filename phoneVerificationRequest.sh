clear
echo Sending Phone Verification Request
echo
echo Request
echo curl "https://api.authy.com/protected/\$AUTHY_API_FORMAT/phones/verification/start?via=sms&country_code=\$USER_COUNTRY&phone_number=\$USER_PHONE"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl -X POST "https://api.authy.com/protected/$AUTHY_API_FORMAT/phones/verification/start?via=sms&country_code=$USER_COUNTRY&phone_number=$USER_PHONE" \
-H "X-Authy-API-Key: $AUTHY_API_KEY"
echo
