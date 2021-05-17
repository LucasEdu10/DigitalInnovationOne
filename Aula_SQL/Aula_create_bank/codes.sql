-- Criando o banco
CREATE DATABASE Ecommerce;


-- Criando as tabelas
CREATE TABLE produto(
    codigo int(4) AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    descricao varchar(200),
    preco float,
    PRIMARY KEY (codigo)
);

CREATE TABLE cliente(
    codigo int(4) AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    tipoPessoa char(1) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE pedido(
    codigo int(4) AUTO_INCREMENT,
    dataSolicitacao datetime,
    flagPago bit NOT NULL,
    totalPedido float NOT NULL,
    codigoCliente int(4),
    PRIMARY KEY (codigo)
);

CREATE TABLE pedidoItem(
    codigoPedido int NOT NULL,
    codigoProduto int NOT NULL,
    PRIMARY KEY (codigo)
);