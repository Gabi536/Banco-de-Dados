CREATE DATABASE loja1;

USE loja1;

CREATE TABLE clientes(
    id_cliente  INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL
);

CREATE TABLE pedidos(
    num_pedido VARCHAR(50) NOT NULL,
    data_pedido DATE NOT NULL,
    item VARCHAR(100) NOT NULL,
    valor FLOAT NOT NULL,
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, 
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

DROP TABLE pedidos 

SELECT * FROM clientes; 
INSERT INTO clientes ( nome, endereco, cidade, cep, id_cliente) 
VALUES ('Maria', 'braz leme', 'sao paulo', 0112200222, '7' );

CREATE TABLE pedidos(
    num_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    item VARCHAR(100) NOT NULL,
    valor FLOAT NOT NULL,
    id_cliente INT, 
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);


SELECT * FROM clientes JOIN pedidos;
INSERT INTO pedidos (data_pedido, item, valor, id_cliente) 
VALUES ('2025-03-12', 'blusa', '300', '1');



