*** Settings ***
Library         SeleniumLibrary

*** Variables ***

${login_url}                                  https://cliente.americanas.com.br/simple-login/?guest=true&next=https%3A%2F%2Fminhaconta.americanas.com.br%2Fv2%2F      
${login_email}                                id:email-input 
${login_senha}                                id:password-input
${login_botao}                                id:login-button
${login_ola}                                  xpath:.//div[contains(text(), "olá ")]

*** Keywords ***


Dado que estou na página de login

    Go to               ${login_url}  

Quando eu preencho os campos de email e senha

    Wait Until Element Is Visible       ${login_email}  
    input text        ${login_email}        desafioqa@gmail.com   
    input text        ${login_senha}        123456
    Click Element     ${login_botao}
    
Então sou autenticado com sucesso   
   Wait Until Element Is Visible      ${login_ola} 
   Page Should Contain                ${login_ola}  

      
       