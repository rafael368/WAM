*** Settings ***
Documentation           Login Page objects mapping

*** Variables ***
${LoginPage_Title}          xpath://img[contains(@src,'Logo_Sonae.png')]       
${Username_Field}           xpath://input[@name='username']        
${Password_Field}           xpath://input[@name='password']
${Login_Button}             xpath://input[@value='Login']
${WAM_Homepage}             xpath://a[contains(.,'Transactions')]