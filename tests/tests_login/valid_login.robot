*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
Resource          login_resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "teste@teste" logs in with password "teste123"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input Username    ${username}
    Input Password    ${password}
    Submit credentials
