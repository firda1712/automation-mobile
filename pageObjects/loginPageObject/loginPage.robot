*** Settings ***
Resource        ../base/base.robot
Variables       login-locators.yaml

*** Keywords ***
Input Username On Login Page
    [Arguments]       ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text        ${username-input}    ${username}

Input Password On Login Page
    [Arguments]       ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text        ${password-input}    ${password}

Click Sign In Button On Login Page
    Click Element    ${sign-in-button}

Verify Login
    Wait Until Element Is Visible  ${verify-login}
    Element Should Contain Text    ${verify-login}

Verify Invalid Login
    Wait Until Element Is Visible  ${verify-invalid-login}
    Element Should Contain Text    ${verify-invalid-login} 


Click Kategori On Home Page
    Click Element    ${kategori-button}


Click Profile Button
    Click Element    ${profile-button}


Verify Profile Page
    Wait Until Element Is Visible  ${verify-profile-page}
    Element Should Contain Text    ${verify-profile-page} 


Click Point Button
    Click Element    ${point-button}


Verifiy Point Page
    Wait Until Element Is Visible  ${verify-point-page}
    Element Should Contain Text    ${verify-point-page} 