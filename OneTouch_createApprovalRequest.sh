clear
echo Creating an OneTouch Approval Request
echo
echo Request
echo curl "http://api.authy.com/onetouch/\$AUTHY_API_FORMAT/users/\$AUTHY_ID/approval_requests?api_key=\$AUTHY_API_KEY" 
echo -d message=\$OT_MESSAGE 
echo -d details[request]=\$OT_DETAILS 
echo -d details[location]=\$OT_LOCATION
echo -d details[Account Number]=\$OT_ACCT_NUM
echo -d seconds_to_expire=\$OT_TTL 
echo -d logos[][res]='low'
echo -d logos[][url]='http://example.com/logos/default.png'
echo
echo Response
curl -s -X POST "http://api.authy.com/onetouch/$AUTHY_API_FORMAT/users/$AUTHY_ID/approval_requests?api_key=$AUTHY_API_KEY" -d message="$OT_MESSAGE" -d details="$OT_DETAILS" -d seconds_to_expire="$OT_TTL" | underscore print --outfmt pretty
echo
