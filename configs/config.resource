*** Settings ***
Documentation   Global settings
Library         SeleniumLibrary
Library         String
#Force Tags      Regressao

*** Variables ***
${URL}                                  https://sonae-pp.outsystemsenterprise.com/wortenactivationmanagerr
${BROWSER}		                        chrome
${REMOTE}	      	                    http://localhost:4444/wd/hub
${TIMEOUT}		                        30
${OS_WAM_ADMIN}		                    WAM_TESTE_2
${OS_WAM_COMMERCIAL_ADMIN}		        WAM_TESTE_3
${OS_WAM_COMMERCIALS}		            WAM_TESTE_4
${OS_WAM_OPERATIONS}		            WAM_TESTE_6
${PASS_WAM}		                        Password123!
${TESTEURL}		                        https://github.com/
${Value_Posa}                           10
${Field_Posa}                           POSA
${Value_PORI}                           9
${Field_PORI}                           POR-I
${Field_PORIGeral}                      PORI - GERAL
