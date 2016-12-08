cls
@echo off
echo Getting Phone Information with Phone Intelligence API
echo.
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/phones/info?api_key=%%AUTHY_API_KEY%%"
echo -d country_code=%%COUNTRY_CODE%%
echo -d phone_number=%%PHONE_NUMBER%%
echo.
echo Response
curl "https://api.authy.com/protected/%AUTHY_API_FORMAT%/phones/info?api_key=%AUTHY_API_KEY%&country_code=%USER_COUNTRY%&phone_number=%USER_PHONE%"
echo.
