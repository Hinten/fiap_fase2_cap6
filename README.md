# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>


# Projeto: fiap_fase2_cap6

## Atividade em Grupo: FIAP - 1TIAOB - 2025/1 - Fase2 Cap6

## 👨‍🎓 Integrantes: 
- <a href="">Alice C. M. Assis - RM 566233</a>
- <a href="">Leonardo S. Souza - RM 563928</a>
- <a href="">Lucas B. Francelino - RM 561409</a> 
- <a href="">Pedro L. T. Silva - RM 561644</a> 
- <a href="">Vitor A. Bezerra - RM 563001</a>

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="proflucas.moreira@fiap.com.br">Lucas Gomes Moreira</a>
### Coordenador(a)
- <a href="profandre.chiovato@fiap.com.br">André Godoi Chiovato</a>


## 📜 Descrição

*Nesta atividade, devemos desenvolver uma solução tecnológica voltada para uma dor ou área específica do agronegócio, utilizando os conhecimentos adquiridos nos capítulos 3 a 6 da disciplina de Python. A proposta deve conter subalgoritmos, estruturas de dados (listas, tuplas, dicionários), manipulação de arquivos (texto e JSON) e conexão com banco de dados Oracle. A escolha do problema é livre, desde que seja bem delimitada, clara e relevante, com foco em inovação e boa usabilidade. O código deve ser postado em repositório GitHub, seguindo o template fornecido.*


## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>.github</b>: Nesta pasta ficarão os arquivos de configuração específicos do GitHub que ajudam a gerenciar e automatizar processos no repositório.
- <b>assets</b>: aqui estão os arquivos relacionados a elementos não-estruturados deste repositório, como imagens.
- <b>config</b>: Posicione aqui arquivos de configuração que são usados para definir parâmetros e ajustes do projeto.
- <b>document</b>: aqui estão todos os documentos do projeto que as atividades poderão pedir. Na subpasta "other", adicione documentos complementares e menos importantes.
- <b>scripts</b>: Posicione aqui scripts auxiliares para tarefas específicas do seu projeto. Exemplo: deploy, migrações de banco de dados, backups.
- <b>src</b>: Todo o código fonte criado para o desenvolvimento do projeto ao longo de todas as fases.
  - <b>database</b>: Execução dos comandos de banco de dados, como Conectar, Cadastrar, Listar, Editar e Excluir. ([database](src/database/))
  - <b>file_exports</b>: Arquivos exportados do Bando de Dados no formato JSON. ([file_exports](src/file_exports/))
  - <b>file_imports</b>: Arquivos no formato JSON para importar no Banco de Dados. ([file_imports](src/file_imports/))
  - <b>logger</b>: Arquivos de formatação da aplicação. ([logger](src/logger/))
  - <b>menu</b>: Exibição e configuração de todos os menus da aplicação, como o da fazenda ([fazenda](src/menu/fazenda/)), insumos ([insumos](src/menu/insumos/)) e maquinário ([maquinario](src/menu/maquinario/)). <b>Obs:</b> a pasta generico compartilha funcionalidades padrões utilizadas por todos os menus. ([menu](src/menu/))
- <b>README</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

  


## 🔧 Como executar o código

- Para iniciar a aplicação é necessário instalar algumas bibliotecas, que são: (<b>arquivo: </b> [requirements.txt](requirements.txt))
  - oracledb==3.1.0*
  - pandas==2.2.3*
  - matplotlib==3.10.1
- Execute a função abaixo para instalar as bibliotecas (obs.: a instalação pode ocorrer de forma autamática a depender do seu ambiente):
  - [notice] A new release of pip is available: 23.2.1 -> 25.0.1
  - [notice] To update, run: python.exe -m pip install --upgrade pip
  - (.venv) PS E:\PythonProject\fiap_fase2_cap6> pip install -r requirements.txt

  <br> 
- Inicie a aplicação no [main.py](src/main.py):
- Informe o usuário do Banco de Dados (exemplo: RM000000) e logo em seguida informe a senha (exemplo: XXXXXX). <b>Obs.:</b> caso não haja um usuário e senha válidos, não será possível seguir.
- Após a conexão com o Bando de Dados será exibido o menu da aplicação:
- <b><u>Importante:</u></b> Nessa etapa as tabelas FAZENDA, INSUMO e MAQUINARIO serão criadas no Banco de Dados para que os dados possam ser inseridos. A aplicação também verifica caso já tenham sido criadas antes.
1) Manutenção de Fazendas
2) Manutenção de Insumos
3) Manutenção de Maquinários
4) Relatórios
0) Sair

Opção 1: <b>Manutenção de Fazendas:</b> ([menu_fazenda.py](src/menu/fazenda/menu_fazenda.py))
1) Cadastrar Fazenda
2) Listar Fazendas
3) Editar Fazenda
4) Excluir Fazenda
5) Exportar Fazendas para JSON
6) Importar Fazendas de um JSON

* Aqui é possível gerenciar todos os dados da Fazenda, como Cadastrar, Listar, Editar, Excluir, além da Exportação ou Importação dos dados no formato JSON.*

Opção 2: <b>Manutenção de Insumos:</b> ([menu_insumos.py](src/menu/insumos/menu_insumos.py))
1) Cadastrar Insumos
2) Listar Insumos
3) Editar Insumos
4) Excluir Insumos
5) Exportar Insumos para JSON
6) Importar Insumos de um JSON

* Aqui é possível gerenciar todos os dados dos Insumos, como Cadastrar, Listar, Editar, Excluir, além da Exportação ou Importação dos dados no formato JSON.*

Opção 3: <b>Manutenção de Maquinário:</b> ([menu_maquinario.py](src/menu/maquinario/menu_maquinario.py))
1) Cadastrar Maquinário
2) Listar Maquinário
3) Editar Maquinário
4) Excluir Maquinário
5) Exportar Maquinário para JSON
6) Importar Maquinário de um JSON

* Aqui é possível gerenciar todos os dados do Maquinário, como Cadastrar, Listar, Editar, Excluir, além da Exportação ou Importação dos dados no formato JSON.*


## 🗃 Histórico de lançamentos


* 0.1.0 - 15/04/2025  - Versão preliminar da nossa aplicação que inclui a geração do script de Banco de Dados

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>


