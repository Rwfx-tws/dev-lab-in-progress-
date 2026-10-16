# 🔐 Gerenciador de Senhas (Python & MySQL)

Um sistema de linha de comando (CLI) desenvolvido em Python e integrado com MySQL, criado para gerenciar senhas de forma segura utilizando uma arquitetura de base de dados relacional. Este projeto faz parte do meu portfólio de estudos em desenvolvimento de software.

## 🚀 Tecnologias Utilizadas

* **Python 3** (Lógica de programação, menu interativo e conexão via conector oficial)
* **MySQL** (Persistência de dados e modelagem relacional)
* **Biblioteca `mysql-connector-python`** (Interface de comunicação entre o Python e o banco de dados)

## 📊 Arquitetura do Banco de Dados

O projeto utiliza duas tabelas principais ligadas por uma **Chave Estrangeira (`FOREIGN KEY`)**, garantindo a normalização e integridade relacional dos dados:

1. **`usuario`** (Tabela Mestre):
   * `id_usuario` (Chave Primária, Auto Increment)
   * `nome_usuario` (Nome único do utilizador)

2. **`senhas`** (Tabela de Credenciais):
   * `id_senhas` (Chave Primária, Auto Increment)
   * `nome_servico` (Ex: Google, Spotify, Amazon)
   * `login_servico` (E-mail ou login utilizado no serviço)
   * `senha_armazenada` (Senha encriptada/armazenada)
   * `id_usuario` (Chave Estrangeira vinculada à tabela `usuario` com exclusão em cascata)

## ✨ Funcionalidades

* **Cadastro de Usuário Mestre:** Registo de novos utilizadores com validação prévia para evitar duplicados.
* **Cadastro de Senhas de Serviço:** Associa credenciais de diferentes plataformas diretamente ao utilizador mestre correspondente através do seu ID relacional.
* **Consulta Relacional (`JOIN`):** Permite listar todas as senhas associadas a um determinado utilizador mestre através de uma consulta otimizada unindo as duas tabelas.
* **Menu Interativo (`CLI`):** Interface amigável no terminal estruturada em loop contínuo.

## ⚙️ Como Executar o Projeto

1. **Pré-requisitos:**
   * Ter o Python instalado na sua máquina.
   * Ter um servidor MySQL a correr localmente (ex: XAMPP, MySQL Workbench).

2. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/Rwfx-tws/dev-lab-in-progress-.git](https://github.com/Rwfx-tws/dev-lab-in-progress-.git)
