*** Settings ***
Documentation       Login test cases for WAM
Resource            ../../resources/Login.resource          
Resource            ../../resources/Menu.resource
Resource            ../../resources/ActivationCodes.resource
#Test Setup          Open Browser and Access to WAM
Test Teardown       Close Session

*** Test Case ***
CT019_WAM - Validar Criação de um Activation Codes
    [Tags]    Teste19
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Codes
    Dado eu clique no Menu Activation Codes
    
