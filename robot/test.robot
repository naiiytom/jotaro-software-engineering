*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser    http://localhost/    Firefox

Fail login
    Go To    http://localhost/login
    Input Text    usernameInput    admin
    Input Text    passwordInput    123456
    Click Button    loginButton
    Capture Page Screenshot    filename=filform.png
    Wait Until Page Contains    Login failed! You have been enter incorrect Username or Password.
    Capture Page Screenshot    filename=filform_failed.png
