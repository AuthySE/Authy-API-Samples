cls
@echo off
echo Sending SMS with Authentication Token
echo.
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/sms/%%AUTHY_ID%%"
echo -H "X-Authy-API-Key: %%AUTHY_API_KEY%%"
echo.
echo Response
curl "http://api.authy.com/protected/%AUTHY_API_FORMAT%/sms/%AUTHY_ID%" \
-H "X-Authy-API-Key: %AUTHY_API_KEY%"
echo.
