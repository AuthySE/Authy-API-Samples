![Authy](https://raw.githubusercontent.com/AuthySE/Authy-API-Samples/master/authy-logo.png)

# Two-Factor Authentication with Authy REST APIs

Here you will learn how to use the Authy REST APIs to perform the user registration, send SMS, place a voice call, verify the token, etc.


[Learn more about the Authy REST APIs](https://docs.authy.com/).

## Quickstart

### Create a Twilio account

Create a free [Twilio account](https://www.twilio.com/user/account/authy/getting-started) and access the Authy dashboard.

You can follow the step by step guide provided [here](https://goo.gl/B3nuo5).

### Setup the environment

Each one of these scripts is designed to run independently and perform the designated functionality specified on the file name.

1. First clone this repository and `cd` into it

   ```bash
   $ git clone git@github.com:AuthySE/Authy-API-Samples.git
   $ cd Authy-API-Samples
   ```

1. Update the .api.env file if you are on macOS/Linux or the .api.env.bat file with your user/environment/API information and then load the variables into your environment. If you are using macOS or Linux operating systems, just use the source command to load the variables into your environment.
 
   ```bash
   $ source .api.env
   ```

   If you are using Windows, execute the api.env.bat file on a command prompt session to make sure all variables are loaded into your environment. Make sure you have [cURL](https://curl.haxx.se/download.html) installed before you run any of the sample scripts on Windows.
   
### Run the sample scripts

Before you run any of the following scripts, make sure you have execution permissions based on your operating system.

   ```bash
   $ chmod +x *.sh
   ```

For a deeper look into our APIs check out our docs:
* [Authy OneTouch](https://docs.authy.com/onetouch.html)
* [TOTP - Time-based One Time Password](https://docs.authy.com/totp.html)
* [Phone Intelligence](https://docs.authy.com/phone_intelligence.html)
* [Phone Verification](https://docs.authy.com/phone_verification.html)

1. **User Registration - userRegistration.sh|.bat** - Before you can secure a user's login you need to create an Authy user. Authy requires you to send an email, cellphone and country code for the user to be registered. In response you get an Authy ID which you must then store with your user's profile information in your own application/database.

1. **Send SMS & Force Send SMS - sendSMS_Ignored.sh|.bat / sendSMS.sh|.bat** - Probably the most common way to deliver a Two-Factor Authentication is via SMS. While insecure and not providing the best user experience, you can request a SMS message to be sent to the user with the one time passcode. By default, this call will be ignored if the user has downloaded and registered the Authy mobile app against their phone number (sendSMS_Ignored.sh). This can be overriden using the force=true option (sendSMS.sh)

1. **Make Phone Call - makeCall.sh|.bat** - For users that don't have a smartphone or having trouble receiving one time passcodes via SMS, Authy allows you to use phone calls instead. By default, this call will be ignored if the user has downloaded and registered the Authy mobile app against their phone number. This can be overriden using the force=true option (sendSMS.sh)

1. **Verify Token - verifyToken.sh|.bat** - To verify a token simply pass in the token that the user entered and the Authy ID of the user. The Authy API response will tell you if the token is valid or not.

1. **Create OneTouch Approval Request - createApprovalRequest.sh|.bat** - To create a OneTouch approval request, send the details in the request to inform the user and control the expiration time. Then, let the user take an action in the Authy mobile app by pressing 'Approve' or 'Deny'. Authy also provides a mobile SDK which allows you to integrate Authy's security features into your own branded mobile app.

1. **Check OneTouch Request Status - checkRequestStatus.sh|.bat** - It's recommended that you use the OneTouch callback (set up in the Authy application console) to your application requesting the approval request but you can also poll for status updates.

1. **Phone Verification - phoneVerificatioRequest.sh|.bat / phoneVerificationCheck.sh|.bat** - The Authy Phone Verification API allows you to verify that the user has the device in their possession. The Authy Phone Verification API lets you request a verification code to be sent to the user and also verify that the code received by the user is valid.

1. **Delete User - deleteUser.sh|bat** - If you want to remove users from your application you can use the delete API. Note, deleting a user will NOT immediately disable token verifications, as a 24 hour delay is typical before the user is permanently removed from the application.

That's it!

## POSTMAN DEMO

We've also uploaded a Postman (v2) collection of API calls and a demo environment. 
[Postman Env](https://github.com/AuthySE/Authy-API-Samples/blob/master/postman/GITHUB%2520DEMO%2520ENV.postman_environment.json) | [Postman Collection](https://github.com/AuthySE/Authy-API-Samples/blob/master/postman/Authy%2520API%2520for%2520Github.postman_collection.json)

Before using, you'll need to register with Authy for an API key and then edit the postman environment with the appropriate information.

![Phone Verification](https://github.com/AuthySE/Authy-API-Samples/blob/master/postman/postman.gif)

## Meta

* No warranty expressed or implied. Software is as is.
* [Apache License](https://opensource.org/licenses/Apache-2.0)
* Lovingly crafted by Authy Solutions Architecture Team.
