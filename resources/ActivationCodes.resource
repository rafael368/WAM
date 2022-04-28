*** Settings ***
Documentation   Login Access
Resource        ../configs/config.resource
Resource        ../page_objects/LoginPage.resource
Resource        ../page_objects/MenusPage.resource
Resource        ../page_objects/ActivationCodesPage.resource

*** Keywords ***
Dado eu clique no Menu Activation Codes
    Click Element                         ${MenuActivationCodes}
    Wait Until Page Contains Element      ${Title_ActivationCodes}
    Sleep                                 2   
    Capture Page Screenshot