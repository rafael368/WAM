*** Settings ***
Documentation       Login test cases for WAM
Resource            ../../resources/Login.resource          
Resource            ../../resources/Menu.resource
Resource            ../../resources/Instructions.resource
Resource            ../../resources/ActivationServices.resource
#Test Setup          Open Browser and Access to WAM
Test Teardown       Close Session

*** Test Case ***
CT009_WAM - Validar Criação de Instructions
    [Tags]    Teste19
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Dado eu clique no Menu Activation Services
    Então exibe o Activation Service atualizado
    Dado eu clique em um Activation Sevice existente
    Dado eu clique na label Instructions
    #Dado eu realize a criação de um novo Instruction
    
