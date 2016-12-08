cls
@echo off
echo Checking for an OneTouch Approval Request Status
echo.
echo Request
echo curl "https://api.authy.com/onetouch/%%AUTHY_API_FORMAT%%/approval_requests/%%UUID%%?api_key=%%AUTHY_API_KEY%%"
echo.
echo Response
curl "http://api.authy.com/onetouch/xml/approval_requests/%1?api_key=%AUTHY_API_KEY%"
echo.
