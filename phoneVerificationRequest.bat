cls
@echo off
echo Sending Phone Verification Request
echo.
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/phones/verification/start?api_key=%%AUTHY_API_KEY%%"
echo -d via=SMS or CALL
echo -d country_code=%%USER_COUNTRY%%
echo -d phone_number=%%PHONE_NUMBER%%
echo.
echo Response
curl -X POST "https://api.authy.com/protected/%AUTHY_API_FORMAT%/phones/verification/start?api_key=%AUTHY_API_KEY%&via=sms&country_code=%USER_COUNTRY%&phone_number=%USER_PHONE%"
echo.
