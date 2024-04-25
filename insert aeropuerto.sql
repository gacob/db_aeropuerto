insert into Marca (Nombre) values
("boing"),
("airbus"),
("embraer"),
("bombardier"),
("atr"),
("mitsubishi"),
("comac"),
("irkut");

insert into Modelos (Nombre, Marca) values
('737', 1),
('A320', 2),
('E190', 3),
('CRJ1000', 4),
('ATR-72', 5),
('SpaceJet M90', 6),
('C919', 7),
('MC-21', 8);

INSERT INTO Aeropuertos (Nombre, Ciudad) VALUES
('Aeropuerto Internacional JFK', 'Nueva York'),
('Aeropuerto de Heathrow', 'Londres'),
('Aeropuerto Internacional de Frankfurt', 'Frankfurt'),
('Aeropuerto de Charles de Gaulle', 'París'),
('Aeropuerto Internacional de Narita', 'Tokio'),
('Aeropuerto Internacional de Hong Kong', 'Hong Kong'),
('Aeropuerto Internacional de Dubai', 'Dubai'),
('Aeropuerto Internacional de Los Ángeles', 'Los Ángeles'),
('Aeropuerto de Schiphol', 'Ámsterdam'),
('Aeropuerto Internacional de Changi', 'Singapur'),
('Aeropuerto Internacional de Sydney', 'Sydney'),
('Aeropuerto Internacional de Sao Paulo-Guarulhos', 'Sao Paulo'),
('Aeropuerto Internacional de Incheon', 'Seúl'),
('Aeropuerto Internacional de El Prat', 'Barcelona'),
('Aeropuerto Internacional de Sheremetyevo', 'Moscú');


INSERT INTO Aviones (Nombre, IdModelo, IdAerolinea) VALUES
('N123AA', 1, 5),
('LH456B', 2, 3),
('LT789C', 3, 7),
('AF321D', 4, 2),
('QA901Z', 2, 1),
('SQ234M', 1, 8),
('EK567J', 3, 6),
('TK890N', 4, 4),
('DL123P', 1, 1),
('BA456Q', 2, 8),
('UA789R', 1, 2),
('CX901S', 2, 5),
('NH234T', 3, 3),
('LX567U', 4, 6),
('AA890V', 1, 7);


INSERT INTO Pasajeros (Nombre, Apellido, Nacionalidad, FechaDeNacimiento) VALUES
('Laura', 'Martinez', 'Española', '1989-03-30'),
('David', 'Wong', 'Canadiense', '1975-08-25'),
('Natalia', 'Ivanova', 'Rusa', '1993-11-11'),
('Marco', 'Rossi', 'Italiano', '1982-01-15'),
('Sarah', 'O\'Connor', 'Irlandesa', '1990-09-19'),
('Yuki', 'Tanaka', 'Japonesa', '1978-05-05'),
('Kumar', 'Singh', 'India', '1985-07-07'),
('Chloe', 'Taylor', 'Australiana', '1996-02-13'),
('Alejandro', 'García', 'Mexicano', '1980-12-22'),
('Fatima', 'Al-Fassi', 'Marroquí', '1991-04-18'),
('Emma', 'Karlsson', 'Sueca', '1988-06-09'),
('Mohammed', 'Al-Amin', 'Egipcio', '1976-03-03'),
('Isabella', 'Ferrari', 'Italiana', '1994-10-31'),
('Xavier', 'Dupont', 'Francés', '1979-01-29'),
('Jin', 'Kwon', 'Coreano', '1984-12-25');

