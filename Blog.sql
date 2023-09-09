-- Criar tabela
CREATE DATABASE Blog;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Blog;


CREATE TABLE Artigo(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT NOT NULL,
DataPublicacao DATE NOT NULL
);



CREATE TABLE Comentario(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Artigo int NOT NULL,
Autor VARCHAR(255) NOT NULL,
Texto TEXT NOT NULL,
DataComentario DATE,
foreign key(ID_Artigo) References Artigo(ID)
);

-- INSERINDO DADOS DO ARTIGO

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Picasso','sua mãe e a tela cubista','1937-04-28');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Regiane Martinez','uma artista talentosa, criativa e dedicada','2002-06-02');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('God of war','Kratos é um guerreiro grego a serviço dos deuses Gregos do Olimpo','2012-11-01');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Mein Kampf ','um guia ideológico e de ação para os nazistas','1925-06-06');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('As Histórias de Ragnar Lodbrok','agnar Lodbrok foi o maior e mais famoso viking de toda a história','2022-03-08');

-- INSERINDO COMENTARIOS
INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (1,'picasso','Bom livro','1937-04-28');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (2,'Regiane Martinez','Bom livro','2002-06-02');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (3,'God of war','Bom demais','2012-11-01');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (4,'Mein Kampf','ruim','1925-06-06');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (5,'As Histórias de Ragnar Lodbrok','outro patamar','2022-03-08');




SELECT * FROM Comentario;
SELECT * FROM Artigo;
DROP DATABASE Blog;