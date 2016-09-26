clear
echo Getting Phone Information with Phone Intelligence API
echo
echo Request
echo curl https://api.authy.com/protected/$AUTHY_API_FORMAT/phones/info?api_key=\$AUTHY_API_KEY
echo -d country_code=\$1
echo -d phone_number=\$2
echo
echo Response:
curl -s "https://api.authy.com/protected/$AUTHY_API_FORMAT/phones/info?api_key=$AUTHY_API_KEY&country_code=$1&phone_number=$2" | underscore print --outfmt pretty
echo
