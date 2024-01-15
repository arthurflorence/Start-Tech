
--1. Criar tabela para armazenar vendas de produtos:

CREATE DATABASE IF NOT EXISTS SPRINT4;

USE SPRINT4;

CREATE TABLE PEDIDO (
ID bigint,
PRODUTO varchar(255),
CATEGORIA varchar(255),
PRECO decimal(10,2),
QUANTIDADE integer,
DATA_PEDIDO date,
CLIENTE varchar(60)
);

ALTER TABLE SPRINT4
ADD PRIMARY KEY (ID);

--2. Inserir dados na tabela de pedidos:

INSERT INTO PEDIDO ( ID, PRODUTO, CATEGORIA, PRODUTO, PRECO, QUANTIDADE, DATA_PEDIDO, CLIENTE) values
(1, 'Notebook Samsung', 'INFO',  3523.00, 1, '2022-01-01', 'ANA'),
(2, 'Sofá 3 lugares', 'MÓVEIS',  2500.00, 1, '2002-01-05', 'ANA'),
(3, 'Clean Architecture', 'LIVROS',  102.90, 2, '2022-01-08', 'ANA'),
(4, 'Mesa de jantar 6 lugares', 'MÓVEIS',  3678.98, 1, '2022-01-06','ELI'),
(5, 'Iphone 13 pro', 'CELULARES',  9176.00, 6, '2022-01-13','ANA'),
(6, 'Monitor Dell 27', 'INFO',  1889.00, 3, '2022-01-04', 'DANI'),
(7, 'Implementing Domain-Driver Design', 'LIVROS',  144.07, 3, '2022-01-10', 'GABI'),
(8,'Jogo de pneus', 'AUTOMOTIVA',  1276.79, 1, '2022-01-15', 'BIA'),
(9,'Clean Code', 'LIVROS',  95.17, 1, '2022-01-09', 'BIA'),
(10,'Galaxy S22 Ultra', 'CELULARES',  8549.10, 5, '2022-01-14', 'DANI'),
(11, 'Macbook Pro 16', 'INFO',  31752.00, 1, '2022-01-03', 'CAIO'),
(12, 'Refactoring Improving the Design of Existing Code', 'LIVROS',  173.90, 1, '2022-01-12', 'DANI'),
(13, 'Cama queen size', 'MÓVEIS',  3100.00, 2, '2022-01-07', 'DANI'),
(14, 'Central multimidia', 'AUTOMOTIVA',  711.18, 1, '2022-01-16', 'CAIO'),
(15, 'Building Microservices', 'LIVROS',  300.28, 2, '2022-01-11', 'CAIO'),
(16, 'Galaxy Tab S8', 'INFO',  5939.10, 4, '2022-01-02', 'BIA');

--3. Corrigir categoria Informatica:

UPDATE PEDIDO SET CATEGORIA='INFORMÁTICA' WHERE CATEGORIA='INFO';

--4. Relatório de todos os pedidos:

SELECT  ID,PRODUTO,PRECO FROM PEDIDO WHERE PRECO>=3000 AND
 PRECO <=10000 ;
SELECT  QUANTIDADE,CLIENTE FROM PEDIDO;
SELECT  QUANTIDADE,CLIENTE FROM PEDIDO;

--5. Relatório de pedidos por categoria:
SELECT  CATEGORIA FROM PEDIDO WHERE CATEGORIA ='CELULARES' ;

--6. Relatório de pedidos por preço:
SELECT  ID,PRODUTO,PRECO FROM PEDIDO WHERE PRECO>=3000 AND
 PRECO <=10000 ;

--7. Remover pedido:

DELETE FROM PEDIDO WHERE ID = 33;
DELETE FROM PEDIDO WHERE QUANTIDADE =1;
DELETE FROM PEDIDO WHERE QUANTIDADE =1;

DELETE FROM PEDIDO WHERE CLIENTE ='Bia';
