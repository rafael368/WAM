*** Settings ***
Documentation       Login test cases for WAM
Resource            ../../resources/Login.resource          
Resource            ../../resources/Menu.resource
Resource            ../../resources/ActivationServices.resource
#Test Setup          Open Browser and Access to WAM
Test Teardown       Close Session

*** Test Case ***
CT001_WAM- Validar Layout Front-End Perfil Admin
    [Tags]    Teste01
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Então exibe o menu Products
    Então exibe o menu Activation Codes
    Então exibe o menu Transactions
    Então exibe o menu Reports
    Então exibe o menu Backoffice
    Dado eu clique no Menu Backoffice
    Então exibe o menu Settings
    Então exibe o menu Countries
    Então exibe o menu Brands
    Então exibe o menu Nintendo Store
    Então exibe o menu Epay Terminals
    Então exibe o menu User Permissions
    Então exibe o menu Activation Errors
    Então exibe o menu Provider Errors
    Então exibe o menu Sony - Code Import
    Então exibe o botão Help

CT002_WAM- Validar Layout Front-End Perfil Commercial Admin
    [Tags]    Teste02
    Dado eu acesse o WAM                         ${OS_WAM_COMMERCIAL_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Então exibe o menu Products
    Então exibe o menu Activation Codes
    Então exibe o menu Transactions
    Então exibe o menu Reports
    Então exibe o menu Backoffice
    Dado eu clique no Menu Backoffice
    Então não exibe o menu Settings
    Então não exibe o menu Countries
    Então não exibe o menu Brands
    Então não exibe o menu Nintendo Store
    Então exibe o menu Epay Terminals
    Então não exibe o menu User Permissions
    Então não exibe o menu Activation Errors
    Então exibe o menu Provider Errors
    Então exibe o menu Sony - Code Import
    Então exibe o botão Help

CT003_WAM- Validar Layout Front-End Perfil Commercials
    [Tags]    Teste03
    Dado eu acesse o WAM                         ${OS_WAM_COMMERCIALS}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Então exibe o menu Products
    Então exibe o menu Activation Codes
    Então exibe o menu Transactions
    Então exibe o menu Reports
    Então exibe o menu Backoffice
    Dado eu clique no Menu Backoffice
    Então não exibe o menu Settings
    Então não exibe o menu Countries
    Então não exibe o menu Brands
    Então não exibe o menu Nintendo Store
    Então exibe o menu Epay Terminals
    Então não exibe o menu User Permissions
    Então não exibe o menu Activation Errors
    Então exibe o menu Provider Errors
    Então exibe o menu Sony - Code Import
    Então exibe o botão Help

CT004_WAM- Validar Layout Front-End Perfil Operations
    [Tags]    Teste04
    Dado eu acesse o WAM                         ${OS_WAM_OPERATIONS}    ${PASS_WAM}
    Então exibe o menu Transactions
    Então exibe o menu Reports
    Então exibe o botão Help
    Então não exibe o menu Backoffice
    Então não exibe o menu Settings
    Então não exibe o menu Countries
    Então não exibe o menu Brands
    Então não exibe o menu Nintendo Store
    Então não exibe o menu Epay Terminals
    Então não exibe o menu User Permissions
    Então não exibe o menu Activation Errors
    Então não exibe o menu Provider Errors
    Então não exibe o menu Sony - Code Import
    Então não exibe o menu Activation Services
    Então não exibe o menu Products
    Então não exibe o menu Activation Codes
