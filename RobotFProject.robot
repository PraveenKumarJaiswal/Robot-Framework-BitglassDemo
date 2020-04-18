*** Settings ***
Suite Setup
Test Teardown
Library           AppiumLibrary    30

*** Variables ***
${portLink}       http://localhost:4723/wd/hub    #Appium host and port details
${platformVersion}    7.0    #Android Version
${platformName}    Android    #OS name
${deviceName}     608fe01a0204    # Device Name
${appPackage}     com.microsoft.office.outlook    #Application Package details.
${appActivity}    .MainActivity t964}}}    #Application activity details
${GetStartedButton}    class = android.widget.Button
${removeEmailCheckBox}    xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckBox
${skipButton}     id = com.microsoft.office.outlook:id/sso_next_step_button
${EmailAddressTextBox}    id = com.microsoft.office.outlook:id/edit_text_email    #Enter email adddress
${TestEmail}      jack@auto-btglss.info    #Entering email id for test
${ContinueButton}    id = com.microsoft.office.outlook:id/btn_continue    #Continue button
${VerifyLoginHeader}    id = loginHeader    #Login Header verifying
${passwordWebTextBox}    xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.view.View[3]/android.view.View[2]/android.view.View[3]/android.view.View[2]/android.widget.EditText
${enterPassword}    Test123@
${oktaSignInButton}    okta-signin-submit    # ikta SignIn Button
${exchangeIcon}    com.microsoft.office.outlook:id/btn_add_account_exchange    #Exchange icon or button
${AdvanceSettingsToggleButton}    com.microsoft.office.outlook:id/btn_show_advanced    #Toggle Button
${passwordTextBox}    com.microsoft.office.outlook:id/edit_text_password    #Password TextBox
${EnterPasswordValue}    Test123@    #Entering password
${ServerTextBox}    com.microsoft.office.outlook:id/edit_text_server    #ServerTextBox
${ServerValue}    outlook-office365-com.us.bitglass.net    #ServerValue
${DescriptionTextBox}    com.microsoft.office.outlook:id/edit_text_description    #Description Text Box
${DomainTextBox}    com.microsoft.office.outlook:id/edit_text_domain_username    #Domain TextBox
${DomainValue}    jack@auto-btglss.info    #Domain Value
${CheckButton}    com.microsoft.office.outlook:id/menu_done    #RightClick check mark button on top right cornor
${AccountAddSkipButton}    com.microsoft.office.outlook:id/btn_skip    #Account Add page skip button
${ProductTourSkipBtn}    com.microsoft.office.outlook:id/product_tour_skip_btn    #product tour skip btn
${HamburgerMenuIcon}    class = android.widget.ImageButton    #Menu icon image
${SettingsIcon}    com.microsoft.office.outlook:id/action_settings    #Settings Button
${AccountsList1}    xpath = android.widget.LinearLayout[@index='2']
${AccountsList2}    xpath = (android.widget.LinearLayout)[2]    #trying using id
${AccountsList}    xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]    #xpath for account
${AccountsList3}    xpath = android.widget.LinearLayout[@instance=4]    #using instance
${DeleteAccountButton}    com.microsoft.office.outlook:id/settings_title    #Delete button
${composeButton}    com.microsoft.office.outlook:id/compose_fab    #Compose email button
${ToEmailAddressTextBox}    com.microsoft.office.outlook:id/compose_to_field    #To email address text box.
${SubjectTextBox}    com.microsoft.office.outlook:id/compose_subject_field    #Submect Text Box
${SubjectTextMessage}    This is Subject Test message    #Dummy subject message.
${BodyTextField}    com.microsoft.office.outlook:id/compose_body    #Email body textbox
${BodyTextMsg}    Hi there, this is texting mail.    #Entering dummy msg in message body.
${emailSendButton}    com.microsoft.office.outlook:id/action_compose_send    #Email sending button
${VerifyEmail}    com.microsoft.office.outlook:id/message_snippet_frontview    #Verifying the email existence.
${DeleteAccountButton1}    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[8]    #Delete button long xpath
${DeleteAccountButton2}    //android.widget.LinearLayout[@index=8]    #Delete Account button 2
${DeleteAccountButton4}    android=UiSelector().text(\"DELETE ACCOUNT\")    #Delete button 4
${AccountInfoDesc}    com.microsoft.office.outlook:id/settings_summary    #Desc xpath
${BlockExternalResource}    com.microsoft.office.outlook:id/settings_title    #Second parameter
${ResetAccount}    com.microsoft.office.outlook:id/settings_title    #Reset button
${ChangeServerSettingsButton}    xpath = //*[contains(text(),'CHANGE SERVER SETTINGS')]    #CHANGE SERVER SETTINGS
${com.microsoft.office.outlook:id/settings_title}    com.microsoft.office.outlook:id/settings_title
${DeleteButton}    android:id/button1    #Delete button on pop

*** Test Cases ***
OutlookLaunch Scenerio 1
    [Documentation]    ** Test Steps **
    ...    Launching Outlook in mobile.
    ...    Clicking on Get Started.
    ...    Un select the selected account.
    ...    Click on Skip button.
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.0    deviceName=608fe01a0204    appPackage=com.microsoft.office.outlook    appActivity=.MainActivity t964}}}Click
    Click Element    ${GetStartedButton}
    Wait Until Element Is Visible    ${skipButton}
    Click Element    ${skipButton}
    Wait Until Element Is Visible    ${EmailAddressTextBox}
    Input Text    ${EmailAddressTextBox}    ${TestEmail}
    Wait Until Element Is Visible    ${ContinueButton}
    Click Element    ${ContinueButton}
    Wait Until Element Is Visible    ${oktaSignInButton}
    Click Element    ${oktaSignInButton}
    Go Back
    Wait Until Element Is Visible    ${exchangeIcon}
    Click Element    ${exchangeIcon}
    Wait Until Element Is Visible    ${AdvanceSettingsToggleButton}
    Click Element    ${AdvanceSettingsToggleButton}
    Wait Until Element Is Visible    ${ServerTextBox}
    Input Text    ${ServerTextBox}    ${ServerValue}
    Click Element    ${passwordTextBox}
    Input Password    ${passwordTextBox}    ${EnterPasswordValue}
    Click Element    ${DomainTextBox}
    Input Text    ${DomainTextBox}    ${DomainValue}
    Click Element    ${CheckButton}
    Wait Until Element Is Visible    ${AccountAddSkipButton}
    Click Element    ${AccountAddSkipButton}
    Wait Until Element Is Visible    ${ProductTourSkipBtn}
    Click Element    ${ProductTourSkipBtn}
    Wait Until Element Is Visible    ${composeButton}
    Click Element    ${composeButton}
    Wait Until Element Is Visible    ${SubjectTextBox}
    Input Text    ${SubjectTextBox}    ${SubjectTextMessage}
    Click Element    ${BodyTextField}
    Input Text    ${BodyTextField}    ${BodyTextMsg}
    Click Element    ${ToEmailAddressTextBox}
    Input Text    ${ToEmailAddressTextBox}    ${TestEmail}
    Click Element    ${emailSendButton}
    Wait Until Element Is Visible    ${VerifyEmail}
    Element Should Be Visible    ${VerifyEmail}
    Sleep    15s
    Click Element    ${HamburgerMenuIcon}
    Wait Until Element Is Visible    ${SettingsIcon}
    Click Element    ${SettingsIcon}
    Wait Until Element Is Visible    ${AccountsList}
    Tap    ${AccountsList}
    Wait Until Element Is Visible    ${AccountInfoDesc}
    Swipe    500    1610    500    500
    Sleep    5s
    Click Element    ${DeleteAccountButton4}
    Wait Until Element Is Visible    ${DeleteButton}
    Click Element    ${DeleteButton}
    Wait Until Element Is Visible    ${GetStartedButton}
    Capture Page Screenshot
