import mysql.connector

conexao = mysql.connector.connect (
    host = "Localhost",
    database = "sistema_de_senha",
    user ="root",
    password="1234"
)

if conexao.is_connected():
    print(f"A conexão com o banco foi realizada com sucesso!")
    cursor = conexao.cursor()

    cursor.close()
    conexao.close()