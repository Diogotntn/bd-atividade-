-- Criar tabela
CREATE DATABASE Gerenciamento;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Gerenciamento;

-- Criar Tabela
CREATE TABLE Clientes(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255)  unique NOT NULL,
Telefone VARCHAR(23)  unique NOT NULL
);

-- Criar Tabela
CREATE TABLE Pedidos(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Clientes int,
DataPedido DATE NOT NULL,
ValorTotal decimal(10,2) NOT NULL,
foreign key(ID_Clientes) References Clientes(ID)
);

-- INSERINDO VALORES CLIENTES

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Diogo','diogo@gmail.com','(00) 0 0101-0101');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Ragnar','Ragnar@gmail.com','(11) 1 1145-2311');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Kratos','Kratos@gmail.com','(22) 2 8788-2225');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Sargento','Sargento@gmail.com','(33) 3 2424-2424');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Akon','Akon@gmail.com','(44) 4 4444-4444');

-- INSERINDO VALORES PEDIDOS
INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (1,'2023-10-06',25.50);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (2,'2023-05-06',185.30);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (3,'2023-10-16',250.00);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (4,'2024-12-06',21.30);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (5,'2023-01-20',50.30);




-- Acessa Banco de Dados
SELECT * FROM Pedidos;
SELECT * fROM Clientes;

DROP DATABASE Gerenciamento;