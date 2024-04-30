drop database if exists aeropuerto;

create database aeropuerto;

use aeropuerto;

/*ALTER TABLE Modelos drop foreign key models ;
ALTER TABLE Aviones DROP FOREIGN KEY A1;
ALTER TABLE Aviones DROP FOREIGN KEY A2;
ALTER TABLE Salidas DROP FOREIGN KEY s1;
ALTER TABLE Llegadas DROP FOREIGN KEY l1;
ALTER TABLE Vuelo DROP FOREIGN KEY v1;
ALTER TABLE Vuelo DROP FOREIGN KEY v2;
ALTER TABLE Vuelo DROP FOREIGN KEY v3;
ALTER TABLE Ticket DROP FOREIGN KEY T1;
ALTER TABLE Ticket DROP FOREIGN KEY T2;*/

DROP TABLE IF EXISTS Marca;
DROP TABLE IF EXISTS Modelos;
DROP TABLE IF EXISTS Aerolineas;
DROP TABLE IF EXISTS Aviones;
DROP TABLE IF EXISTS Pasajeros;
DROP TABLE IF EXISTS Aeropuertos;
DROP TABLE IF EXISTS Salidas;
DROP TABLE IF EXISTS Llegadas;
DROP TABLE IF EXISTS Vuelo;
DROP TABLE IF EXISTS Ticket;




create table if not exists Marca(
Id int auto_increment  primary key,
Nombre varchar(30)

);

create table if not exists Modelos (
Id int auto_increment primary key,
Nombre varchar(30),
Marca int,
CONSTRAINT models FOREIGN KEY (Marca) REFERENCES Marca(Id)
);

create table if not exists Aerolineas(
Id int auto_increment PRIMARY KEY,
Nombre varchar(30)

);

create table if not exists Aviones(
Id int auto_increment ,
Nombre varchar(30),
IdModelo int,
IdAerolinea int,
PRIMARY KEY (Id,IdAerolinea),
CONSTRAINT A1 FOREIGN KEY (IdModelo) REFERENCES Modelos(Id),
CONSTRAINT A2 FOREIGN KEY (IdAerolinea) REFERENCES Aerolineas(Id)
);


create table if not exists Pasajeros (
Id INT auto_increment PRIMARY KEY,
Nombre varchar(30),
Apellido varchar (30),
Nacionalidad varchar(30),
FechaDeNacimiento date

);

create table if not exists Aeropuertos(
Id int auto_increment PRIMARY KEY,
Nombre VARCHAR(100),
Ciudad varchar(50)
);

create table if not exists Salidas(
Id int auto_increment Primary key,
IdAeropuerto int,
Fecha date,
CONSTRAINT s1 FOREIGN KEY (IdAeropuerto) REFERENCES Aeropuertos(Id)

);

create table if not exists Llegadas (
Id int Primary key,
IdAeropuerto int,
Fecha date,
CONSTRAINT l1 FOREIGN KEY (IdAeropuerto) REFERENCES Aeropuertos(Id)

);

create table if not exists Vuelo(
Id int auto_increment PRIMARY KEY,
IdSalida int,
IdLlegada int,
IdAvion int,
CONSTRAINT v1 FOREIGN KEY (IdSalida) REFERENCES Salidas(Id),
CONSTRAINT v2 FOREIGN KEY (IdLlegada) REFERENCES Llegadas(Id),
CONSTRAINT v3 FOREIGN KEY (IdAvion) REFERENCES Aviones(Id)

);

create table if not exists Ticket(
Id int auto_increment PRIMARY KEY,
IdPasajero int,
IdVuelo int,
CONSTRAINT T1 FOREIGN KEY (IdPasajero) REFERENCES Pasajeros(Id),
CONSTRAINT T2 FOREIGN KEY (IdVuelo) REFERENCES Vuelo(Id)

);






