*** Settings ***
Documentation       Login test cases for WAM
Resource            ../../resources/Login.resource          
Resource            ../../resources/Menu.resource
Resource            ../../resources/ActivationServices.resource
#Test Setup          Open Browser and Access to WAM
Test Teardown       Close Session

*** Test Case ***
CT005_WAM - Realizar Criação de Activation Service
    [Tags]    Teste05
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Dado eu clique no Menu Activation Services
    Dado eu realize a Criação de um novo Activation Service
    Então exibe o novo Activation Service na Lista

CT006_WAM - Realizar Edição de Activation Service
    [Tags]    Teste06
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Dado eu clique no Menu Activation Services
    Dado eu realize edição de um Activation Service
    Então exibe o Activation Service atualizado

CT007_WAM - Validar Filtros no Ecrã Activation Service
    [Tags]    Teste07
    Dado eu acesse o WAM     ${OS_WAM_ADMIN}    ${PASS_WAM}
    Então exibe o menu Activation Services
    Dado eu clique no Menu Activation Services
    Dado eu realize filtro por Name, Provider Endpoint e Activation Type
    Então exibe o resultado do filtro do Activation Service
