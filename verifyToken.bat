cls
@echo off
echo Verifying the Authentication Token
echo.
echo Request
echo curl -i "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/verify/%%TOKEN%%/%%AUTHY_ID%%?api_key=%%AUTHY_API_KEY%%"
echo.
echo Response
curl -i "http://api.authy.com/protected/%AUTHY_API_FORMAT%/verify/%1/%AUTHY_ID%?api_key=%AUTHY_API_KEY%"
echo.
