*** Variables ***
${labelRegisterTitle}       //*[text()="Daftar Akun"]
${buttonBackRegister}       ${labelRegisterTitle}//preceding-sibling::button
${inputEmail}               //input[@id="email"]
${inputPhone}               //input[@id="mobilePhone"]
${inputPassword}            //input[@id="password"]
${inputConfirmPassword}     //input[@id="confirmPassword"]
${inputFirstName}           //input[@id="firstName"]
${inputLastName}            //input[@id="lastName"]
${inputCityAndProvince}     //input[@id="cityAndProvince"]
${buttonRegisterNew}        //button[@data-button-name="register-new"]

${labelVerificationTitle}   //*[text()="Pilih Metode Verifikasi"]
${buttonBackVerification}   ${labelVerificationTitle}//preceding-sibling::button
${buttonSendOTPWhatsapp}    //button[@data-button-name="send-otp-whatsapp"]
${buttonSendOTPSMS}         //button[@data-button-name="send-otp-sms"]

${labelOTPTitle}            //*[text()="Verifikasi No. Handphone"]
${buttonBackOTP}            ${labelOTPTitle}//preceding-sibling::button
${inputOTP1}                //input[@id="pin-input-0"]
${inputOTP2}                //input[@id="pin-input-1"]
${inputOTP3}                //input[@id="pin-input-2"]
${inputOTP4}                //input[@id="pin-input-3"]
${inputOTP5}                //input[@id="pin-input-4"]
${inputOTP6}                //input[@id="pin-input-5"]
