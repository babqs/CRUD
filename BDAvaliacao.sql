CREATE DATABASE BDAvaliacao;
USE BDAvaliacao;

CREATE TABLE tb_cliente
(
id_cliente int unsigned not null auto_increment,
nome_cliente varchar(100) not null,
email_cliente varchar(100) not null,
telefone_cliente varchar(100) not null,
PRIMARY KEY (id_cliente)
);

CREATE TABLE tb_produto
(
id_produto int unsigned not null auto_increment,
nome_produto varchar(100) not null,
qtd_produto int not null,
PRIMARY KEY (id_produto)
);