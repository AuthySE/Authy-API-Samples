clear
echo Checking for an OneTouch Approval Request Status
echo
echo Request
echo curl "https://api.authy.com/onetouch/\$AUTHY_API_FORMAT/approval_requests/\$UUID" \
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY"
echo
echo Response
curl "https://api.authy.com/onetouch/$AUTHY_API_FORMAT/approval_requests/$1" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" | underscore print --outfmt pretty
echo




