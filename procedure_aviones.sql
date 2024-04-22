
-- Contar aviones por aerolínea, con sus detalles
DROP PROCEDURE IF EXISTS vuelo_llegada;
delimiter //
CREATE PROCEDURE aviones_por_aerolinea (
	in aerolinea varchar(50)
)
BEGIN
	DECLARE aero_id INT;
    
	SELECT id INTO aero_id FROM aerolineas WHERE aerolineas.nombre=aerolinea;
    
	SELECT aerolineas.nombre AS Aerolinea, marca.nombre AS Marca, aviones.nombre as Avión, modelos.nombre as Modelo FROM aviones
    JOIN aerolineas ON aerolineas.id=aero_id
    JOIN marca ON marca.id=modelos.id
    JOIN modelos ON modelos.id=aviones.id;

END
//

