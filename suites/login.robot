*** Settings ***
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/loginPageObject/loginPage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}        0881024658613
${VALID_PASSWORD}        FIRda@123
${INVALID_USERNAME}      invalid
${INVALID_PASSWORD}      invalid



*** Test Cases ***
Login Valid Credential
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify Login
    Click Kategori On Home Page
    Click Profile Button
    Verify Profile Page
    Click Point Button
    Verify Point Page

Login Invalid Credential
    Click Sign In Button On Home Page
    Input Username On Login Page    ${INVALID_USERNAME}
    Input Password On Login Page    ${INVALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify Invalid Login


