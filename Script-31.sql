

DELIMITER $$
CREATE TRIGGER before_articulo_update
BEFORE UPDATE
ON articulo FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(255);
    SET errorMessage = CONCAT('The new quantity ',
                        NEW.quantity,
                        ' cannot be 3 times greater than the current quantity ',
                        OLD.quantity);
                        
    IF new.quantity > old.quantity * 3 THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = errorMessage;
    END IF;
end;
END;$$


DELETE PC, PD, PN, AP, ZP, MK
            FROM PROMOCIONCABECERA PC
            LEFT JOIN PROMOCIONDETALLE PD ON (PD.IDPROMOCION = PC.IDPROMOCION)
            LEFT JOIN PROMOCIONNIVEL PN ON (PN.IDPROMOCION = PC.IDPROMOCION)
            LEFT JOIN ARTICULOPROMOCION AP ON (AP.IDAGRUPACION = PC.IDPROMOCION)
            LEFT JOIN MARCAS MK ON (MK.IDMARCA = PC.IDPROMOCION)
            LEFT JOIN AFVZONASPROMO ZP ON (ZP.IDPROMO = PC.IDPROMOCION)
            WHERE PC.IDPROMOCION=${event.data.IDPROMOCION}