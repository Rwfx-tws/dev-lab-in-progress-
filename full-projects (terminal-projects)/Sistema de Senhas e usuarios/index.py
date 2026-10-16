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
    
    while True:
        print("\n" + "="*30)
        print("      GERENCIADOR DE SENHAS      ")
        print("="*30)
        print("1. Cadastrar Usuário Mestre")
        print("2. Cadastrar uma Senha de Serviço (Google, Spotify...)")
        print("3. Listar Minhas Senhas")
        print("4. Sair")
        print("="*30)
        
        opcao =input("Digite uma opcao")
        
        if opcao == "1":
            
            print("\n--- CADASTRAR USUÁRIO MESTRE ---")
            nome_usuario = input("Digite o nome do usuario mestre:")
            
            query_add_user = " INSERT INTO usuario (nome_usuario)  VALUE (%s)"
            
            cursor.execute(query_add_user, (nome_usuario,))
            conexao.commit()
            
            print(f"Usuario {nome_usuario} cadastrado com sucesso!")
            
        elif opcao == "2":
            print("\n--- CADASTRAR SENHA DE SERVIÇO ---")
            nome_mestre = input("Digite o nome de usuario")
            
            query_id = "SELECT FROM usuarios WHERE nome_usuario = (%s)"
            cursor.execute(query_id, (nome_mestre,))
            resultado = cursor.fetchone()
            
            if resultado is None:
                print("Usuario não cadastrado, cadastreo primeiro")
                continue
            else:
                
                id_do_usuario = resultado[0]
                
                
                servico = input("Nome do serviço (ex: Google, Spotify,Amazon,Youtube): ")
                login = input(f"Login/E-mail usado no {servico}: ")
                senha_servico = input(f"Senha do {servico}: ")
                
                query_add_senha = """ INSERT INTO senhas (nome_servico, login_servico, senha_armazenada, id_usuario)
                """
                cursor.execute(query_add_senha, (servico, login, senha_servico, id_do_usuario))
                cursor.commit()
                print(f"A senha do {servico} foi adicionada ao banco com sucesso!")
        
        elif opcao == "3":
            print("\n--- LOCALIZAR SENHAS DO USUARIO ---")
            
            nome_mestre = input("Digite seu nome de usuário mestre para ver suas senhas: ")
            
            query_busca =""" 
                SELECT s.nome_servico, s.login_servico, s.senha_armazenada
                FROM senhas AS s
                JOIN usuario AS u ON s.id_usuario = u.id_usuario
                WHERE nome_usuario = s%
            """
            cursor.execute(query_busca, (nome_mestre))
            senhas_encontradas = cursor.fetchall()
            
            if not senhas_encontradas:
                print("nem uma senha encontrada")
            else:
                for s in senhas_encontradas:
                    print(f"\nserviço:{s[0]}")
                    print(f"Login:{s[1]}")
                    print(f"Senha:{s[2]}")
                    print("-"*20)
                         
        elif opcao == "4":
            print("Saindo do sistema...")
            break
    
    cursor.close()
    conexao.close()