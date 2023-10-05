--Uber.sql Juan Andres Rodriguez Peñuela Andres Serrato Camero
--CICLO 1: Tablas 

CREATE TABLE Vehiculo(
placa VARCHAR(20),
a_o NUMBER(4),
tipo VARCHAR(1),
estado CHAR(1),
puertas NUMBER(3) NULL,
pasajeros NUMBER(3) NULL,
carga NUMBER(3) NULL
);


CREATE TABLE conductor(
licencia  VARCHAR(20),
fechadenacimiento DATE,
estrellas NUMBER(1),
estado CHAR(1)
);

CREATE TABLE persona(
id NUMBER(9),
tipo CHAR(2),
numero VARCHAR(10),
nombre VARCHAR(50),
registro DATE,
celular NUMBER(10),
correo VARCHAR(50)
);

CREATE TABLE cliente(
personaid NUMBER(9),
idioma VARCHAR(10)
);

CREATE TABLE presenta(
clienteid NUMBER(9),
numerotarjeta NUMBER(15)
);

CREATE TABLE tarjeta(
numero NUMBER(15),
entidad VARCHAR(10),
vencimiento DATE
);

CREATE TABLE solicitud(
codigo NUMBER(9),
fechacreacion TIMESTAMP,
fechaViaje TIMESTAMP NULL,
plataforma VARCHAR(1),
precio NUMBER (5) NULL,
estado CHAR(1),
requerimientos VARCHAR(15) NULL,
posicionid VARCHAR(20) NOT NULL
);


CREATE TABLE requerimiento(
solicitudid NUMBER(9),
requerimiento VARCHAR(15) NULL
);

CREATE TABLE posicion(
posid VARCHAR(20)NOT NULL,
latitud REAL ,
longitud REAL
);

CREATE TABLE pqrs (
tiked VARCHAR(13),
radicacion DATE,
cierre DATE NULL,
descripcion VARCHAR(50) NULL,
tipo CHAR(1),
estadoPQRS CHAR(1)
);  


CREATE TABLE PQRSrespuesta(
fecha DATE,
descripcion VARCHAR(50),
nombre VARCHAR(20),
correo VARCHAR(50),
comentario VARCHAR(20) NULL,
evaluacion NUMBER(1)NULL
);

CREATE TABLE anexo (
nombre VARCHAR(20),
url VARCHAR(100)
);



--CICLO 1: PoblarOK (1) 
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('ABC123', 2020, 'A', 'A', 4, 5, NULL);
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('XYZ789', 2019, 'B', 'A', 2, 2, NULL);
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('DEF456', 2022, 'C', 'I', NULL, NULL, 1000);
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('GHI789', 2018, 'D', 'A', 4, 7, NULL);
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('JKL012', 2021, 'E', 'A', 2, NULL, 500);
INSERT INTO Vehiculo (placa, a_o, tipo, estado, puertas, pasajeros, carga) VALUES ('MNO345', 2017, 'F', 'I', NULL, NULL, 800);
