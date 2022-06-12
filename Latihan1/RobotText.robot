*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser        ${webURL}       ${BROWSERS}
Test Teardown           Close Browser

*** Variables ***
${webURL}               http://uitestingplayground.com/textinput
${BROWSERS}             edge

*** Test Cases ***
I type my name in the field Text
    Maximize Browser Window
    Input text                      //input[@id="newButtonName"]            suryadi
    Click Button                    //button[@id="updatingButton"] 
    Element Should Contain          //button[@id="updatingButton"]          surya
#    Close Browser