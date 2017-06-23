CREATE DATABASE Pactica1

CREATE TABLE Estudiante (
Carnet INT NOT NULL,
Nombre TEXT NOT NULL,
DPI INT NOT NULL,
Direccion TEXT NOT NULL,
Telefono INT NOT NULL,
PRIMARY KEY(Carnet)
);

CREATE TABLE Libro (
Titulo Varchar(75) NOT NULL,
Ejemplares INT NOT NULL,
Tema TEXT NOT NULL,
No_Paginas INT NOT NULL,
PRIMARY KEY(Titulo)
);

CREATE TABLE Autor (
Cod_Autor INT NOT NULL,
Titulo Varchar(75) NOT NULL,
Nombre TEXT NOT NULL,
FOREIGN KEY (Titulo) REFERENCES libro(Titulo),
PRIMARY KEY(Cod_Autor, Titulo)
);

CREATE TABLE Prestamo (
Cod_Prestamo INT NOT NULL,
Carnet INT NOT NULL,
Titulo Varchar(75) NOT NULL,
Nombre TEXT NOT NULL,
FOREIGN KEY (Carnet) REFERENCES estudiante(Carnet),
FOREIGN KEY (Titulo) REFERENCES libro(Titulo),
PRIMARY KEY(Cod_Prestamo, Carnet , Titulo)
);

CREATE TABLE Estado (
Cod_Estado INT NOT NULL,
Nombre TEXT NOT NULL,
PRIMARY KEY(Cod_Estado)
);

CREATE TABLE Estado_Libro (
Cod_Estado INT NOT NULL,
Titulo Varchar(75) NOT NULL,
FOREIGN KEY (Cod_Estado) REFERENCES estado(Cod_Estado),
FOREIGN KEY (Titulo) REFERENCES libro(Titulo),
PRIMARY KEY(Cod_Estado , Titulo)
);


CREATE TABLE Biblioteca (
Cod_Biblio INT NOT NULL,
Nombre TEXT NOT NULL,
PRIMARY KEY(Cod_Biblio)
);

CREATE TABLE Empleado (
Cod_Empleado INT NOT NULL,
Cod_Biblio INT NOT NULL,
Nombre TEXT NOT NULL,
FOREIGN KEY (Cod_Biblio) REFERENCES biblioteca(Cod_Biblio),
PRIMARY KEY(Cod_Empleado)
);

CREATE TABLE Biblioteca (
Cod_Biblio INT NOT NULL,
Nombre TEXT NOT NULL,
PRIMARY KEY(Cod_Biblio)
);

INSERT INTO estado (Cod_Estado, Nombre) VALUES (1, 'Disponible');
INSERT INTO estado (Cod_Estado, Nombre) VALUES (2, 'Prestado');
INSERT INTO estado (Cod_Estado, Nombre) VALUES (3, 'Reservado');
INSERT INTO estado (Cod_Estado, Nombre) VALUES (4, 'Restauracion');

INSERT INTO libro (Titulo, Ejemplares, Tema, No_Paginas) VALUES('El Retrato de Dorian Gray',10,'Fantasía',220)