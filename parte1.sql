CREATE DATABASE sistema_vendas_22c;

USE sistema_vendas_22c;

CREATE TABLE cliente(
nome varchar(50) not null,
endereco varchar(100) not null,
email varchar(50),
celular tinyint(30) unsigned not null,
dt_nascimento date
);

CREATE TABLE produto(
id_produtos int not null auto_increment,
nome varchar(50) not null,
preco decimal (6,2) not null,
descricao varchar(50) not null,
quantidade_estoque int not null,
PRIMARY KEY(id_produtos)
);

CREATE TABLE pedido(
id_pedido tinyint unsigned primary key auto_increment not null,
dt_compra date,
valor decimal(6,2),
dt_estimada_entrega date,
foreign key(id_produtos)
REFERENCES produto(id_produtos)
);

CREATE TABLE itens(
quantidade tinyint unsigned not null,
valor_unitário decimal(6,2),
foreign key(numero_pedido)
references pedido(numero_pedido),
valor_total int
);
