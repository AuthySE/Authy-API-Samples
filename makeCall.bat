cls
@echo off
echo Making Phone Calls to Provide Authentication Token
echo.
echo Request
echo curl -i "https://api.authy.com/protected/json/call/%%AUTHY_ID%%?api_key=%%AUTHY_API_KEY%%&force=true"
echo.
echo Response
curl -i "http://api.authy.com/protected/json/call/%AUTHY_ID%?api_key=%AUTHY_API_KEY%&force=true"
echo.
