clear
echo Creating an OneTouch Approval Request
echo
echo Request
echo curl -X POST "https://api.authy.com/onetouch/\$AUTHY_API_FORMAT/users/\$AUTHY_ID/approval_requests"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo -d message=\$MESSAGE 
echo -d details[request]=\$REQUEST_DETAILS 
echo -d details[location]=\$REQUEST_LOCATION
echo -d details[Account Number]=\$ACCOUNT_NUMBER
echo -d seconds_to_expire=\$SECONDS_TO_EXPIRE 
echo -d logos[][res]='low'
echo -d logos[][url]='https://example.com/logos/default.png'
echo
echo Response
curl -X POST "https://api.authy.com/onetouch/$AUTHY_API_FORMAT/users/$AUTHY_ID/approval_requests" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" \
-d message="$OT_MESSAGE" \
-d details="$OT_DETAILS" \
-d seconds_to_expire="$OT_TTL"
echo
