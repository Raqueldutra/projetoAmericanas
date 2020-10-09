# Projeto Americanas

Aplica teste UI no site  https://www.americanas.com.br/, utilizando as ferramentas: selenium Web Drive e Robot Framework.

# Funcionalidades testadas
* Usuário ja cadastrado
* Senha fraca
* CPF inválido
* Cadastro com sucesso
* Realizar login
* Adicionar produto

### Requisitos de sistema
* [Phyton 3.7+](https://www.python.org/downloads/)
* Chrome 83+
* [Chromedriver 85+](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)

### Instalando dependências
`pip install --no-cache-dir -r requirements.txt`

# Executando o projeto
robot -d ./report Tests\

Serão executados todos os casos de testes e os detalhes com os prints do resultado de cada caso de teste estarão disponíveis em relatório HTML no diretório /report.
clear
