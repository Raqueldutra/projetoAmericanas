*** Settings ***
Resource             ../Resource/Resource.robot
Resource             ../Resource/Pages/cadastro_usuario.robot
Test Setup           Nova sessão   
Test Teardown        Encerra sessão
Suite Setup          Initialize Random Variables


*** Test Cases ***
Cenário: Usuário ja cadastrado
    [tags]  usuarioCadastrado
    Dado que estou na tela de cadastro
    Quando informo os campos obrigatorios com email ja cadastrado
    E clico em Criar seu cadastro
    Então o sistema informa "E-mail já cadastrado"

Cenário: Senha fraca
    [tags]  senhaFraca
    Dado que estou na tela de cadastro
    Quando preencho todos os campos obrigatorios com senha "12"
    E clico em Criar seu cadastro
    Então o sistema apresenta "fraca"

Cenário: CPF inválido
    [tags]  CPF
    Dado que estou na tela de cadastro
    Quando preencho todos os campos obrogatoios com CPF inválido
    E clico em Criar seu cadastro
    Então o sistema apresenta "CPF inválido."

Cenário: Cadastrar usuário
    [tags]  cadastro 
    Dado que estou na tela de cadastro
    Quando informo os campos obrigatorios com dados validos
    E clico em Criar seu cadastro
    Então sou direcionado para a pagina home



