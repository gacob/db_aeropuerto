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

-- actualiza asientos
DELIMITER //
CREATE TRIGGER actualizar_asientos_disponibles
AFTER INSERT ON Ticket
FOR EACH ROW
BEGIN
    UPDATE Vuelo
    SET AsientosDisponibles = AsientosTotales - (
        SELECT COUNT(*) 
        FROM Ticket 
        WHERE IdVuelo = NEW.IdVuelo
    )
    WHERE Id = NEW.IdVuelo;
END$$

CREATE TRIGGER actualizar_asientos_eliminar
AFTER DELETE ON Ticket
FOR EACH ROW
BEGIN
    UPDATE Vuelo
    SET AsientosDisponibles = AsientosTotales - (
        SELECT COUNT(*) 
        FROM Ticket 
        WHERE IdVuelo = OLD.IdVuelo
    )
    WHERE Id = OLD.IdVuelo;
END//
DELIMITER ;
