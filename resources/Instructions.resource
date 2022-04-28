*** Settings ***
Documentation   Login Access
Resource        ../configs/config.resource
Resource        ../page_objects/LoginPage.resource
Resource        ../page_objects/MenusPage.resource
Resource        ../page_objects/ActivationServicesPage.resource
Resource        ../page_objects/Instructions_Page.resource

*** Keywords ***
Dado eu clique em um Activation Sevice existente
    Click Element                         ${Link_ActivationService}
    Sleep                                1
    Capture Page Screenshot
Dado eu clique na label Instructions
    Sleep                                2
    #Scroll Element Into View             ${Label_Instructions}
    #Mouse Down                           ${Label_Instructions}
    Sleep                                5
    Click Element                        ${Label_Instructions}
    Sleep                                5
    Capture Page Screenshot
Dado eu realize a criação de um novo Instruction

    
