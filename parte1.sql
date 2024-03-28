CREATE DATABASE sistema_vendas_22c;

USE sistema_vendas_22c;

CREATE TABLE cliente(
id_cliente int not null,
nome varchar(50) not null,
endereco varchar(100) not null,
email varchar(50),
celular tinyint(30) unsigned not null,
dt_nascimento date,
PRIMARY KEY(Id_cliente)
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
foreign key(id_cliente)
REFERENCES cliente(id_cliente)
);

CREATE TABLE itens(
quantidade tinyint unsigned not null,
valor_unitário decimal(6,2),
valor_total int,
Foreign KEY (id_produto)
REFERENCES produto(id_produto),
Foreign KEY (id_pedido)
REFERENCES pedido (id_pedido)
);
