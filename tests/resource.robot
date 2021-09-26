*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***

${SERVER}         localhost/psiu-gestor
# ${SERVER}         45.80.153.95/test/psiu-gestor
${BROWSER}        Firefox
${DELAY}          0.5
