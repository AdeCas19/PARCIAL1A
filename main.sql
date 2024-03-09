CREATE DATABASE PARCIAL1A

    use PARCIAL1A
    
CREATE TABLE autores (
  id_autores INTEGER PRIMARY KEY IDENTITY NOTNULL,
  name VARCHAR (50) NOTNULL
);

CREATE TABLE posts(
    id INTO PRIMARY KEY IDENTITY NOT NULL,
    titulo VARCHAR(50) NOTNULL,
    contenido VARCHAR(500) NOTNULL,
    fechapublicacion datetime,
    autorld INTO NOTNULL
    CONSTRAINT FK_IDAUTORES FOREIGN KEY (id_autores) REFERENCES autores (id_autores)
);

CREATE TABLE autorlibro(
    autorld INTO PRIMARY KEY IDENTITY NOTNULL,
    librold INTO PRIMARY KEY IDENTITY NOTNULL,
    orden INTO NOTNULL
    CONSTRAINT FK_AUTORLD FOREIGN KEY (autorld) REFERENCES posts (autorld)
);

CREATE TABLE libros(
    id_libros INTO PRIMARY KEY IDENTITY NOTNULL,
    titulo VARCHAR (50) NOTNULL
    CONSTRAINT FK_IDAUTORES FOREIGN KEY (id_autores) REFERENCES autores (id_autores)
);

INSERT INTO autorlibro(autorld, librold) values
('Agatha Cristie', 'Muerte en el Nilo'),
('Arthur Conan Doyle', 'Sherlock Holmes'),
('Jane Austen', 'Orgullo y prejuicio'),
('Stephen King', 'El resplandor')

SELECT * FROM autorlibro