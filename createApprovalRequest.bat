cls
@echo off
echo Creating an OneTouch Approval Request
echo.
echo Request
echo curl -X POST "https://api.authy.com/onetouch/%%AUTHY_API_FORMAT%%/users/%%AUTHY_ID%%/approval_requests"
echo -H "X-Authy-API-Key: %%AUTHY_API_KEY%%"
echo -d message=%%OT_MESSAGE%%
echo -d details=%%OT_DETAILS%%
echo -d seconds_to_expire=%%OT_TTL%%
echo.
echo Response
curl -X POST "https://api.authy.com/onetouch/%AUTHY_API_FORMAT%/users/%AUTHY_ID%/approval_requests" ^
 -H "X-Authy-API-Key: %AUTHY_API_KEY%" ^
 -d message=%OT_MESSAGE% ^
 -d details=%OT_DETAILS% ^
 -d seconds_to_expire=%OT_TTL%
echo.
