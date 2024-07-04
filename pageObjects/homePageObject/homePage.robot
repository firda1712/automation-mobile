*** Settings ***
Resource        ../base/base.robot
Variables       home-locators.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element    ${login_button}

