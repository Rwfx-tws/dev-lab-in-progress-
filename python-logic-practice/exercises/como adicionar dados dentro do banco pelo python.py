import mysql.connector

conexao = mysql.connector.connect(
   host = "Localhost",
       database = "bancoteste",
       user ="root",
       password="1234"
)

if conexao.is_connected():
    print(f"A conexão com o Banco de dados foi realizada com sucesso!")
    cursor = conexao.cursor()
    
    new_users = []
    
    for u in range(10):
        usuario = input(f"Digite o nome de usuario do {u+1}° usuario para adicionar a lista:")
        senha = input(f"DIgite a senha do usuario:")
        new_users.append((usuario,senha))
    print(f"Os {u} novos usuarios estão todos na lista de novos usuarios prontos para serem adicioandos ao banco")
    
    inserir_dados = 'INSERT INTO usuario(nome_usuario, senha_armazenada) VALUES (%s, %s)'
    
    for nome, senha in new_users:
        cursor.execute(inserir_dados, (nome, senha))
        print(f"Utilizador {nome} preparado para inserção.")
        
    conexao.commit()
    print(f"Todos os dados foram guardados na base de dados!")
        
    
    
    
    cursor.close()
    conexao.close()