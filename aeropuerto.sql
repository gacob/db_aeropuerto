drop database if exists aeropuerto;

create database aeropuerto;

use aeropuerto;

create table Marca(
Id int auto_increment  primary key,
Nombre varchar(30)

);

create table Modelos (
Id int auto_increment primary key,
Nombre varchar(30),
Marca int,
FOREIGN KEY (Marca) REFERENCES Marca(Id)
);

create table Aerolineas(
Id int auto_increment PRIMARY KEY,
Nombre varchar(30)

);

create table Aviones(
Id int auto_increment ,
Nombre varchar(30),
IdModelo int,
IdAerolinea int,
PRIMARY KEY (Id,IdAerolinea),
FOREIGN KEY (IdModelo) REFERENCES Modelos(Id),
FOREIGN KEY (IdAerolinea) REFERENCES Aerolineas(Id)
);


Create table Pasajeros (
Id INT auto_increment PRIMARY KEY,
Nombre varchar(30),
Apellido varchar (30),
Nacionalidad varchar(30),
FechaDeNacimiento date

);

CREATE TABLE Aeropuertos(
Id int auto_increment PRIMARY KEY,
Nombre VARCHAR(30),
Ciudad varchar(30)
);

CREATE TABLE Salidas(
Id int auto_increment Primary key,
IdAeropuerto int,
Fecha date,
FOREIGN KEY (IdAeropuerto) REFERENCES Aeropuertos(Id)

);

Create table Llegadas (
Id int Primary key,
IdAeropuerto int,
Fecha date,
FOREIGN KEY (IdAeropuerto) REFERENCES Aeropuertos(Id)

);

CREATE TABLE Vuelo(
Id int auto_increment PRIMARY KEY,
IdSalida int,
IdLlegada int,
IdAvion int,
FOREIGN KEY (IdSalida) REFERENCES Salidas(Id),
FOREIGN KEY (IdLlegada) REFERENCES Llegadas(Id),
FOREIGN KEY (IdAvion) REFERENCES Aviones(Id)

);

Create table Ticket(
Id int auto_increment PRIMARY KEY,
IdPasajero int,
IdVuelo int,
FOREIGN KEY (IdPasajero) REFERENCES Pasajeros(Id),
FOREIGN KEY (IdVuelo) REFERENCES Vuelo(Id)

);






