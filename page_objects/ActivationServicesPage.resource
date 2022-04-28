*** Settings ***
Documentation           Login Page objects mapping

*** Variables ***
${Title_ActivationServices}             xpath://div[text()='Activation Services']
${Bt_CreateActivationService}           xpath://span[text()='Create Activation Service']/ancestor::button
${Title_NewActivationService}           xpath://span[text()='New Activation Service']
${Input_NameActivationService}          xpath://input[@id='Input_Name']
${Input_CodeActivationService}          xpath://input[@id='Input_Code']
${SelectProvider}                       xpath://select[@id='DropdownProviderEndpoint']
${Checkbox_IsActive}                    xpath://input[@id='SwitchIsActive']
${Bt_Save}                              xpath://div[@id='Buttons']//button[text()='Save']
${Msg_CreatedActivationService}         xpath://div[contains(.,'Record created successfully.')]
${Filter_NameOrCode}                    xpath://input[@id='InputCode']
${Field_NameActivationService}          xpath://a[contains(@href,'/ActivationServicesDetail')]//span
${Field_CodeActivationService}          xpath://tr[@class='table-row']//td[2]//span
${Field_ActivationType}                 xpath://tr[@class='table-row']//td[4]//span
${Link_ActivationService}               xpath://a[contains(@href,'/ActivationServicesDetail')]
${Title_EditActivationService}          xpath://span[contains(.,'Edit')]
${Msg_EditedActivationService}          xpath://div[contains(.,'Record updated successfully.')]
${Filter_ProviderEndpoint}              xpath://select[@id='ProviderEndpointsDropDown']
${Filter_ActivationType}                xpath://select[@id='ActivationTypeDropDown2']
${Field_ProviderEndpoint}               xpath://td[contains(@data-header,'Provider Endpoint')]//span
${Field_IsActive}                       xpath://i[contains(@class,'green')]
