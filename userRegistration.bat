cls
@echo off
echo Registering the User
echo. 
echo Request
echo curl "https://api.authy.com/protected/%%AUTHY_API_FORMAT%%/users/new?api_key=%%AUTHY_API_KEY%%" 
echo -d user[email]=%%USER_EMAIL%%
echo -d user[cellphone]=%%USER_PHONE%%
echo -d user[country_code]=%%USER_COUNTRY%%
echo.
echo Response
curl "http://api.authy.com/protected/%AUTHY_API_FORMAT%/users/new?api_key=%AUTHY_API_KEY%" -d user[email]=%USER_EMAIL% -d user[cellphone]=%USER_PHONE% -d user[country_code]=%USER_COUNTRY%
echo.
