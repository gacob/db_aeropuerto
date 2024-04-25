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

insert into Aeropuertos (Nombre, Ciudad) values
('Aeropuerto Internacional JFK', 'Nueva York'),
('Aeropuerto de Heathrow', 'Londres'),
('Aeropuerto Internacional de Frankfurt', 'Frankfurt'),
('Aeropuerto de Charles de Gaulle', 'París');

insert into Aviones (Nombre, IdModelo, IdAerolinea) values
('raianer', 1, 1),
('iberia', 2, 2),
('vueling', 3, 3),
('qatar', 4, 4);

