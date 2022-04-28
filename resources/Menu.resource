*** Settings ***
Documentation   Login Access
Resource        ../configs/config.resource
Resource        ../page_objects/LoginPage.resource
Resource        ../page_objects/MenusPage.resource

*** Keywords ***
Então exibe o menu Activation Services  
    Page Should Contain Element         ${MenuActivationServices}     
Então exibe o menu Products
    Page Should Contain Element         ${MenuProducts}
Então exibe o menu Activation Codes
    Page Should Contain Element         ${MenuActivationCodes}
Então exibe o menu Transactions
    Page Should Contain Element         ${MenuTransactions}
Então exibe o menu Reports
    Page Should Contain Element         ${MenuReports}
Então exibe o menu Backoffice
    Page Should Contain Element         ${MenuBackOffice}
Dado eu clique no Menu Backoffice
    Click Element                       ${MenuBackOffice}
Então exibe o menu Settings
    Page Should Contain Element         ${MenuSettings}
Então exibe o menu Countries
   Page Should Contain Element         ${MenuCountries}
Então exibe o menu Brands
   Page Should Contain Element         ${MenuBrands}
Então exibe o menu Nintendo Store
   Page Should Contain Element         ${MenuNintendo}
Então exibe o menu Epay Terminals
   Page Should Contain Element         ${MenuEpayTerminals}
Então exibe o menu User Permissions
   Page Should Contain Element         ${MenuUsersPermissions}
Então exibe o menu Activation Errors
   Page Should Contain Element         ${MenuActivationErrors}
Então exibe o menu Provider Errors
   Page Should Contain Element         ${MenuProviderErrors}
Então exibe o menu Sony - Code Import
    Page Should Contain Element         ${MenuSony}
Então exibe o botão Help
    Page Should Contain Element         ${ButtonHelp}  
Então não exibe o menu Settings
    Page Should Not Contain Element     ${MenuSettings} 
Então não exibe o menu Countries
    Page Should Not Contain Element     ${MenuCountries} 
Então não exibe o menu Brands
    Page Should Not Contain Element     ${MenuBrands} 
Então não exibe o menu Nintendo Store
    Page Should Not Contain Element     ${MenuNintendo} 
Então não exibe o menu User Permissions
    Page Should Not Contain Element     ${MenuUsersPermissions} 
Então não exibe o menu Activation Errors
    Page Should Not Contain Element     ${MenuActivationErrors} 
Então não exibe o menu Backoffice
    Page Should Not Contain Element     ${MenuBackOffice}
Então não exibe o menu Epay Terminals
    Page Should Not Contain Element     ${MenuEpayTerminals}
Então não exibe o menu Provider Errors
    Page Should Not Contain Element     ${MenuProviderErrors}
Então não exibe o menu Sony - Code Import
    Page Should Not Contain Element     ${MenuSony}
Então não exibe o menu Activation Services
    Page Should Not Contain Element     ${MenuActivationServices}
Então não exibe o menu Products
    Page Should Not Contain Element     ${MenuProducts}
Então não exibe o menu Activation Codes
    Page Should Not Contain Element     ${MenuActivationCodes}

    

