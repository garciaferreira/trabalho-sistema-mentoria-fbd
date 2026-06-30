# Fundamentos de Banco de Dados - Sistema de Mentoria 

Este projeto consiste em um sistema de gerenciamento para sessões de mentoria, desenvolvido como parte do trabalho final da disciplina de Fundamentos de Banco de Dados.

## Equipe
* Vinícius Garcia de Lima Ferreira
* Carlos Eduardo Silva Andrade

## Configuração do Banco de Dados

1. Criar um banco de dados no PostgreSQL com o nome: `sistema_mentoria_fbd`
2. Executar o script `criacao_banco.sql` para construir a estrutura de tabelas e chaves estrangeiras.
3. Executar o script `povoamento_banco.sql` para inserir os dados iniciais de teste.

Nota: Caso a senha do seu ambiente local do PostgreSQL não seja a padrão utilizada no código (`1234`), altere a variável `SENHA` no início dos arquivos `.ipynb`.

## Configuração do Ambiente Python

Para garantir o isolamento das dependências, utilize um ambiente virtual a partir do diretório raiz do projeto:

```bash
# Criação do ambiente virtual
python -m venv venv

# Ativação do ambiente (Windows)
.\venv\Scripts\activate

# Instalação das dependências
pip install pandas panel sqlalchemy psycopg2-binary nbconvert jupyter_bokeh

# CRUD de Sessões
python -m panel serve crud_sessoes.ipynb --show

# CRUD de Mentores
python -m panel serve crud_mentores.ipynb --show

## Status do Desenvolvimento

* [x] Criação da estrutura do Banco de Dados (DDL) 
* [x] Povoamento inicial com dados de teste (DML)
* [x] Módulo CRUD de Sessões (Create, Read, Update, Delete)
* [x] Módulo CRUD de Mentores (Create, Read, Update, Delete)
* [x] Integração da interface em Python com o PostgreSQL