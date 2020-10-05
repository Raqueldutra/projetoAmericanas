*** Settings ***
Resource             ../Resource/Resource.robot
Resource             ../Resource/Pages/cadastro_usuario.robot
Resource             ../Resource/Pages/login.robot
Test Setup           Nova sessão   
Test Teardown        Encerra sessão

*** Test Cases ***

Cenário: CTO1- Login Sucesso
    [Tags]     login
    Dado que estou na página de login
    Quando eu preencho os campos de email e senha
    Então sou autenticado com sucesso

