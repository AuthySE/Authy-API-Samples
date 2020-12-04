clear
echo Generate a QR Code for 3rd party authenticator app
echo
echo Request
echo curl -X POST "https://api.authy.com/protected/json/users/\$AUTHY_ID/secret" 
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo -d label="LabelHere" 
echo -d qr_size="300"
echo
echo
echo Response
curl -X POST "https://api.authy.com/protected/json/users/$AUTHY_ID/secret" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" \
-d label="LabelHere" \
-d qr_size="300"| jq
echo







