USE sistema_vendas_22c;

INSERT into cliente ( nome, endereco, email, celular, dt_nascimento) 
VALUES
( 'Thiago', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Gabriel', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Mateus', 'UNASP', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Miguel', 'Capão redondo', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Luiz', 'Cotia', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'João', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Paulo', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Henrique', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Julio', 'Vila prudente', 'thiago@gmail.com', 11984735472, '1980-09-15'),
( 'Alberto', 'Rua das Belezas', 'thiago@gmail.com', 11984735472, '1980-09-15');

INSERT into  produto ( nome, preco, descricao, quantidade_estoque) 
VALUES
( 'Thiago', 100.00, 'livro muito bom', 200),
( 'Gabriel', 100.00, 'livro muito bom', 200),
( 'Mateus', 2000.00, 'livro muito bom', 200),
( 'Miguel', 300.00, 'livro muito bom', 200),
( 'Luiz', 100.00, 'livro muito bom', 200),
( 'João', 100.00, 'livro muito bom', 200),
( 'Paulo', 500.00, 'livro muito bom', 200),
( 'Henrique', 100.00, 'livro muito bom', 200),
( 'Julio', 1000.00, 'livro muito bom', 200),
( 'Alberto', 100.00, 'livro muito bom', 200);

INSERT into  pedido ( dt_compra, valor, dt_estimada_entrega) 
VALUES
('2000-10-25', 100, '2000-10-29'),
('2000-10-25', 200, '2000-10-29'),
('2000-10-25', 500, '2000-10-29'),
('2000-10-25', 100, '2000-10-29'),
('2000-10-25', 1000, '2000-10-29'),
('2000-10-25', 100, '2000-10-29'),
('2000-10-25', 3200, '2000-10-29'),
('2000-10-25', 100, '2000-10-29'),
('2000-10-25', 100, '2000-10-29'),
('2000-10-25', 100, '2000-10-29');

INSERT into  itens ( quantidade, valor_unitário, valor_total) 
VALUES
(3, 100, 300),
(6, 100, 600),
(2, 100, 200),
(4, 100, 400),
(10, 100, 1000),
(4, 100, 400),
(2, 100, 200),
(1, 100, 100),
(8, 100, 800),
(7, 100, 700);

UPDATE cliente
SET nome = Bruno
WHERE endereco = 'Capão redondo';

UPDATE cliente
SET nome = Douglas
WHERE endereco = 'UNASP';

UPDATE cliente
SET nome = Maria
WHERE endereco = 'Cotia';

UPDATE cliente
SET nome = Manuel
WHERE endereco = 'Vila prudente';

UPDATE produto
SET quantidade_estoque = 300
WHERE preco = 'R$500';

UPDATE produto
SET quantidade_estoque = 900
WHERE preco = 'R$300';

UPDATE produto
SET quantidade_estoque = 1000
WHERE preco = 'R$10000';

UPDATE produto
SET quantidade_estoque = 700
WHERE preco = 'R$2000';

UPDATE pedido
SET dt_compra = '2000-10-26'
WHERE valor = 3200;

UPDATE pedido
SET dt_compra = '2000-10-26'
WHERE valor = 1000;

UPDATE pedido
SET dt_compra = '2000-10-28'
WHERE valor = 500;

UPDATE pedido
SET dt_compra = '2000-10-26'
WHERE valor = 200;

UPDATE itens
SET quantidade = '8'
WHERE valor = 400;

UPDATE itens
SET quantidade = '4'
WHERE valor = 300;

UPDATE itens
SET quantidade = '10'
WHERE valor = 700;

UPDATE itens
SET quantidade = '6'
WHERE valor = 400;

DELETE FROM cliente
 WHERE endereco = 'UNASP';
 
DELETE FROM cliente
 WHERE nome = 'Henrique';
 
DELETE FROM produto
 WHERE preco = 300;
 
DELETE FROM produto
 WHERE preco = 2000;
 
DELETE FROM pedido
 WHERE valor = 500;
 
DELETE FROM pedido
 WHERE valor = 1000;
 
DELETE FROM produto
 WHERE quantidade = 3;
 
DELETE FROM produto
 WHERE quantidade = 1;
