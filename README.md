# Projeto Americanas

Aplica teste funcional no site  https://www.americanas.com.br/, utilizando as ferramentas: selenium Web Drive e Robot Framework.

# Funcionalidades testadas
* Usuário ja cadastrado
* Senha fraca
* CPF inválido
* Cadastro com sucesso
* Realizar login
* Buscar produto
* Adicionar produto no carrinho

# Requisitos
* [Phyton 3.8+](https://www.python.org/downloads/)
* Robot Framework: pip install robotframework
* Chrome 83+
* [Chromedriver 85+](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)

# Instalando dependências
* pip install robotframework-seleniumlibrary

# Executando o projeto
robot -d ./report Tests\

Serão executados todos os casos de testes e os detalhes com os prints do resultado de cada caso de teste estarão disponíveis em relatório HTML no diretório /report.
