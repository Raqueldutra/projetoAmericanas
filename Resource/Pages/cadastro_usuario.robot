*** Settings ***
Library         SeleniumLibrary
Library         String

*** Variables ***

${cadastro_url}                            https://cliente.americanas.com.br/simple-login/cadastro/pf?next=https%3A%2F%2Fwww.americanas.com.br%2F
${cadastro_email}                          id:email-input    
${cadastro_senha}                          id:password-input
${cadastro_CPF}                            id:cpf-input
${cadastro_nome}                           id:name-input
${cadastro_nascimento}                     id:birthday-input
${cadastro_genero}                         xpath://input[contains(@type, 'radio')]
${cadastro_telefone}                       id:phone-input
${cadastro_botao}                          xpath:.//button[contains(@type, 'submit')]
${cadastro_mensagem_email}                 xpath:.//*[contains(text(), "E-mail já cadastrado")]
${cadastro_mensagem_CPF}                   xpath:.//*[contains(text(), "CPF inválido.")]
${cadastro_mensagem_senha}                 xpath:.//*[contains(text(), "fraca")]
${cadastro_mensagem_home}                  xpath://*[contains(text(), "olá")]

*** Keywords ***

Initialize Random Variables
    ${cadastro_random_name}=   Generate random string  8  [LOWER]
    Set global variable  ${cadastro_random_name}


Dado que estou na tela de cadastro
    Go to                       ${cadastro_url} 


Quando informo os campos obrigatorios com email ja cadastrado
    Wait Until Element Is Visible            ${cadastro_email}    
    cadastro com    teste@hotmail.com       123456      31674432003     ${cadastro_random_name} qa     01011990       4899779788
    
Quando preencho todos os campos obrigatorios com senha "12"
    Wait Until Element Is Visible            ${cadastro_email}    
    cadastro com    ${cadastro_random_name}@hotmail.com       12      31674432003     ${cadastro_random_name} qa       01011990       4899779788

Quando preencho todos os campos obrogatoios com CPF inválido
    Wait Until Element Is Visible            ${cadastro_email}    
    cadastro com    ${cadastro_random_name}@hotmail.com       123456      31674432003     ${cadastro_random_name} qa       01011990       4899779788

Quando informo os campos obrigatorios com dados validos
    Wait Until Element Is Visible            ${cadastro_email}    
    cadastro com    ${cadastro_random_name}@hotmail.com       123456      31674432003     ${cadastro_random_name} qa       01011990       4899779788

E clico em Criar seu cadastro

    Click Element           ${cadastro_botao} 

Então o sistema informa "E-mail já cadastrado"
   
    Page Should contain     ${cadastro_mensagem_email}


Então o sistema apresenta "fraca"
    
    Page Should contain     ${cadastro_mensagem_email}

Então o sistema apresenta "CPF inválido."

    Page Should contain     ${cadastro_mensagem_CPF}

Então sou direcionado para a pagina home

    Page Should contain     ${cadastro_mensagem_home}


cadastro com
    [Arguments]      ${email}    ${senha}     ${CPF}     ${nome}    ${nascimento}      ${telefone} 

    input text               ${cadastro_email}            ${email}
    input text               ${cadastro_senha}            ${senha}                 
    input text               ${cadastro_CPF}              ${CPF}                  
    input text               ${cadastro_nome}             ${nome}                 
    input text               ${cadastro_nascimento}       ${nascimento}
    input text               ${cadastro_telefone}         ${telefone}