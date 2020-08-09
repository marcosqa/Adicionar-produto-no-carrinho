Configurando o ambiente para fazer este teste web,usando o Robot Framework.

Baixe o Python atraves do link https://www.python.org/downloads/
Na instalação marque a opção Add Python to PATH, pra configurar as variáveis de ambiente no PATH do windows.
Abra o Prompt de Comando e digite o comando python --version

Cenário: Adicionar ao carrinho.
Dado que acesso o site com login e senha.
E preencho o campo pesquisar produtos com "Blouse".
E clico em pesquisar.
Quando clico em adicionar ao carrinho.
Então o item é inserido no carrinho.
