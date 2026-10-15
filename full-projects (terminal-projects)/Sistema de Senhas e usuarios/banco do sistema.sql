CREATE DATABASE sistema_de_senha;

use sistema_de_senha;

create table usuario(

     id_usuario int PRIMARY KEY auto_increment,
     nome_usuario varchar(75) NOT NULL
    
);

create table senhas(
    
      id_senha int PRIMARY KEY auto_increment,
      nome_servico varchar(100) NOT NULL,
      login_servico varchar(100) NOT NULL,
      senha_armazenada varchar(225) NOT NULL,
      id_usuario INt,
      FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)on DELETE CASCADE
      
  );
