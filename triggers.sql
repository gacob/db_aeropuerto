DELIMITER //
CREATE TRIGGER actualizar_vuelos_aerolinea
AFTER INSERT ON Vuelo
FOR EACH ROW
BEGIN
    UPDATE Aerolineas
    SET NumeroVuelos = NumeroVuelos + 1
    WHERE Id = (
        SELECT IdAerolinea 
        FROM Aviones 
        WHERE Id = NEW.IdAvion
    );
END//
DELIMITER ;
