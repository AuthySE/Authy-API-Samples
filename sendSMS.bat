cls
@echo off
echo Sending SMS with Authentication Token
echo.
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/sms/%%AUTHY_ID%%?force=true"
echo -H "X-Authy-API-Key: %%AUTHY_API_KEY%%"
echo.
echo Response
curl "https://api.authy.com/protected/%AUTHY_API_FORMAT%/sms/%AUTHY_ID%?force=true" ^
 -H "X-Authy-API-Key: %AUTHY_API_KEY%"
echo.
