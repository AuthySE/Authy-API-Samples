cls
@echo off
echo Checking for Phone Verification Code
echo.
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/phones/verification/check?api_key=%%AUTHY_API_KEY%%"
echo -d country_code=%%USER_COUNTRY%%
echo -d phone_number=%%PHONE_NUMBER%%
echo -d verification_code=%%VERIFICATION_CODE%%
echo.
echo Response
curl "https://api.authy.com/protected/%AUTHY_API_FORMAT%/phones/verification/check?api_key=%AUTHY_API_KEY%&phone_number=%USER_PHONE%&country_code=%USER_COUNTRY%&verification_code=%1"
echo.
