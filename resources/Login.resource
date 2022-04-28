*** Settings ***
Documentation   Login Access
Library         SeleniumLibrary
Resource        ../configs/config.resource
Resource        ../page_objects/LoginPage.resource

*** Keywords ***
Dado eu acesse o WAM   
    [Arguments]                     ${LoginWAM}     ${PASS_WAM}
    #${capabilities}    Create Dictionary    EnableVNC=${True}    EnableVideo=${True}
    #Open Browser    ${URL}    ${BROWSER}    remote_url=${SERVER_REMOTO}    desired_capabilities=${capabilities}
    Open Browser                    ${URL}    ${BROWSER}   
    Maximize Browser Window
    Wait Until Element Is Visible   ${LoginPage_Title}
    Input Text                      ${Username_Field}        ${LoginWAM}
    Input Text                      ${Password_Field}        ${PASS_WAM}
    Capture Page Screenshot
    Click Element                   ${Login_Button}     
    Wait Until Element Is Visible   ${WAM_Homepage}
    Capture Page Screenshot

Close Session
    Capture Page Screenshot
    Close Browser
  