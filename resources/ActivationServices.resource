*** Settings ***
Documentation   Login Access
Resource        ../configs/config.resource
Resource        ../page_objects/LoginPage.resource
Resource        ../page_objects/MenusPage.resource
Resource        ../page_objects/ActivationServicesPage.resource

*** Keywords ***
Dado eu clique no Menu Activation Services
    Click Element                         ${MenuActivationServices}
    Wait Until Page Contains Element      ${Title_ActivationServices}
    Sleep                                 2   
    Capture Page Screenshot
Dado eu realize a Criação de um novo Activation Service
    #Generate Randon String
    ${Get_random_string}=        Generate Random String    6    [LOWER]
    ${VarActivationService} =    Catenate    SEPARATOR=      Automation       ${Get_random_string}
    Set Global Variable                    ${VarActivationService}
#Generate Randon ID
    ${randon_Code}=    Generate Random String    length=8    chars=[NUMBERS]
    ${randon_Code}=    Convert To Integer     ${randon_Code}
    Set Global Variable                    ${randon_Code}
    Set Global Variable                   ${VarActivationService}
    Click Element                         ${Bt_CreateActivationService}
    Wait Until Page Contains Element      ${Title_NewActivationService}
    Sleep                                 2
    Input Text                            ${Input_NameActivationService}       ${VarActivationService}
    Input Text                            ${Input_CodeActivationService}       ${randon_Code}
    Select From List By Value             ${SelectProvider}                    ${Value_Posa} 
    Element Should Be Enabled             ${Checkbox_IsActive}
    Capture Page Screenshot
    Click Element                         ${Bt_Save}
    Wait Until Page Contains Element      ${Msg_CreatedActivationService}   
    Capture Page Screenshot
    Sleep                                 2

Então exibe o novo Activation Service na Lista
    Input Text                            ${Filter_NameOrCode}                 ${VarActivationService}
    Sleep                                 1
    Wait Until Page Contains Element      ${Field_NameActivationService}
    Element Should Contain                ${Field_NameActivationService}       ${VarActivationService}   
    Element Should Contain                ${Field_CodeActivationService}       ${randon_Code} 
    Element Should Contain                ${Field_ActivationType}              ${Field_Posa}   
    Capture Page Screenshot

Dado eu realize edição de um Activation Service
    Input Text                            ${Filter_NameOrCode}                 ${VarActivationService}
    Sleep                                 1
    Wait Until Page Contains Element      ${Field_NameActivationService}
    Element Should Contain                ${Field_NameActivationService}       ${VarActivationService}   
    Element Should Contain                ${Field_CodeActivationService}       ${randon_Code} 
    Element Should Contain                ${Field_ActivationType}              ${Field_Posa} 
    Click Element                         ${Link_ActivationService}
    Sleep                                 1 
    Wait Until Page Contains Element      ${Title_EditActivationService}
    Click Element                         ${SelectProvider}  
    Select From List By Value             ${SelectProvider}                    ${Value_PORI} 
    Capture Page Screenshot
    Click Element                         ${Bt_Save}
    Sleep                                 1  
    Wait Until Page Contains Element      ${Msg_EditedActivationService}    
    Capture Page Screenshot
    Sleep                                 1   

Então exibe o Activation Service atualizado   
    Input Text                            ${Filter_NameOrCode}              Automationyddjah   #${VarActivationService}
    Sleep                                 1
    Wait Until Page Contains Element      ${Field_NameActivationService}
    Element Should Contain                ${Field_NameActivationService}    Automationyddjah   #${VarActivationService}   
    Element Should Contain                ${Field_CodeActivationService}    43050109   #${randon_Code} 
    Element Should Contain                ${Field_ActivationType}              ${Field_PORI} 
    Capture Page Screenshot

Dado eu realize filtro por Name, Provider Endpoint e Activation Type
    Input Text                            ${Filter_NameOrCode}                 ${VarActivationService}
    Select From List By Value             ${Filter_ProviderEndpoint}           ${Value_PORI}
    Select From List By Label             ${Filter_ActivationType}             ${Field_PORI}      
    Sleep                                 1
Então exibe o resultado do filtro do Activation Service
    Element Should Contain                ${Field_NameActivationService}       ${VarActivationService}   
    Element Should Contain                ${Field_CodeActivationService}       ${randon_Code} 
    Element Should Contain                ${Field_ActivationType}              ${Field_PORI} 
    Element Should Contain                ${Field_ProviderEndpoint}            ${Field_PORIGeral} 
    Element Should Be Visible             ${Field_IsActive} 