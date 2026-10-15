CREATE DATABASE bancoteste;

use bancoteste;

create table usuario(

     id_usuario int PRIMARY KEY auto_increment,
     nome_usuario varchar(75) NOT NULL,
     senha_armazenada varchar(225) NOT NULL
);
