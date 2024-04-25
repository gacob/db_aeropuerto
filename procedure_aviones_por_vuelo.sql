-- Contar aviones por vuelo
DROP PROCEDURE IF EXISTS aviones_por_vuelo;
delimiter //
CREATE PROCEDURE aviones_por_vuelo (
	IN A_nombre varchar(30)
)
BEGIN
	DECLARE avionID INT DEFAULT 0;
    
    SELECT id INTO avionID FROM aviones WHERE Nombre LIKE "A_nombre";
    
    SELECT count(*) AS Cantidad_Vuelos, aviones.nombre as Nombre, marca.nombre as Marca, modelos.nombre as Modelo FROM vuelo
    JOIN aviones ON aviones.id=avionID
    JOIN modelo ON modelo.id=aviones.IdModelo
    JOIN marca ON marca.id=modelos.marca
    WHERE IdAvion=avionID;
END
//

