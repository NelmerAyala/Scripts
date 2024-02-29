SELECT 
	s2.pk ,
	p.*,
	s.*,
	s2.*,
	sof.*,
	f.*,
	i.*,
	f2.*
FROM 
	pacsdb.patient p 
	INNER JOIN pacsdb.study s ON p.pk = s.patient_fk 
	INNER JOIN pacsdb.series s2 ON s2.study_fk = s.pk 
	INNER JOIN pacsdb.study_on_fs sof ON sof.study_fk = s.pk 
	inner join pacsdb.filesystem f ON f.pk = sof.filesystem_fk 
	INNER JOIN pacsdb.`instance` i ON i.series_fk = s2.pk 
	INNER JOIN pacsdb.files f2 ON f2.instance_fk = i.pk 
WHERE 
	p.pat_id = 7590679
	
SELECT 
	p.pat_id,
	p.pat_name,
	s.study_desc,
	s2.series_desc,
	concat(f.dirpath, '/',f2.filepath  ) pathFile
FROM 
	pacsdb.patient p 
	INNER JOIN pacsdb.study s ON p.pk = s.patient_fk 
	INNER JOIN pacsdb.series s2 ON s2.study_fk = s.pk 
	INNER JOIN pacsdb.study_on_fs sof ON sof.study_fk = s.pk 
	inner join pacsdb.filesystem f ON f.pk = sof.filesystem_fk 
	INNER JOIN pacsdb.`instance` i ON i.series_fk = s2.pk 
	INNER JOIN pacsdb.files f2 ON f2.instance_fk = i.pk 
WHERE 
	p.pat_id = 7590679
	

	
	
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