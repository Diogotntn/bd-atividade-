-- Criar tabela
CREATE DATABASE Recursos_Humano;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Recursos_Humano;


CREATE TABLE Recursos_Humano.Departamentos(
ID int(30) auto_increment not null primary key,
NomeDepartamento varchar(255) not null
);

 
CREATE TABLE Recursos_Humano.Funcionarios(
ID int (30) auto_increment not null primary key,
ID_Departamento int,
Nome varchar(255),
Cargo Varchar(255),
Salario Decimal(10,2),
foreign key (ID_Departamento) references Departamentos(ID)
);

INSERT INTO Recursos_Humano.Departamentos(NomeDepartamento)
VALUES('Financeiro');

INSERT INTO Recursos_Humano.Departamentos(NomeDepartamento)
VALUES('Humano'); 

INSERT INTO Recursos_Humano.Departamentos(NomeDepartamento)
VALUES('Pessoal'); 

INSERT INTO Recursos_Humano.Departamentos(NomeDepartamento)
VALUES('Comercial'); 

INSERT INTO Recursos_Humano.Departamentos(NomeDepartamento)
VALUES('Administrativo');  


INSERT INTO Recursos_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(1,'Diogo','Financeiro',55000.00);

INSERT INTO Recursos_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(2,'vhtc','Vendedor',5000.00);

INSERT INTO Recursos_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(3,'Seu Jorge','Cantor',50000.00);

INSERT INTO Recursos_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(4,'brtt','Gamer',10000.00);

INSERT INTO Recursos_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(5,'Lima','Administrativo',1000.00);



select * from Recursos_Humano.Funcionarios;
select * from  Recursos_Humano.Departamentos;