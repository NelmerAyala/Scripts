-- Lista y enumerar subprocesos de conexiones actuales
SHOW FULL PROCESSLIST;

SHOW VARIABLES LIKE 'max_connections';

SHOW STATUS LIKE 'max_used_connections';

SHOW STATUS WHERE `variable_name` = 'Threads_connected';

select * from INFORMATION_SCHEMA.PROCESSLIST where db = 'dbfacturacion';

-- Matar una subprocesos con su ID
KILL 1;

SELECT CONCAT('KILL ',id,';') FROM information_schema.processlist WHERE user='digitalizacionusercon';

-- Modificar fecha de actualizacion cada vez que se le haga un Update al registro
ALTER TABLE dbfacturacion.documents MODIFY COLUMN update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Obtener next value de un incrementable de una tabla
SELECT `AUTO_INCREMENT`
FROM  INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'dbfacturacion'
AND   TABLE_NAME   = 'batchs';

-- Cambiar el next value de un incrementable de una tabla 
ALTER TABLE batchs AUTO_INCREMENT=1143;

ALTER TABLE users AUTO_INCREMENT=66;


SELECT dC.cant, dC.doc_number, d.control_number, d.doc_status_id 
FROM (
SELECT COUNT( doc_number ) cant, doc_number  
FROM dbfacturacion.documents d
group by (doc_number)
HAVING COUNT( doc_number ) >1) dC,  dbfacturacion.documents d
where dC.doc_number = d.doc_number and d.doc_status_id !=4
order by d.doc_number 

SELECT *
FROM dbfacturacion.documents d
WHERE d.id in ( 
	SELECT doc_id FROM batch_documents bd WHERE batch_id=1141 and send_success =0
)

select CONCAT( dt.type_origen  , '-', d.doc_number, '-',d.control_number,'.pdf') , d.doc_number, d.id 
from documents d inner join doc_types dt ON d.doc_type_id =dt.id 
where doc_status_id =6 and message ='Documento no encontrado para enviar'
order by d.doc_number DESC 

-- Consultar doc number y status de documentos dentro de un lote
select bd.*, d.doc_number , d.doc_status_id 
from dbfacturacion.batch_documents bd inner join dbfacturacion.documents d on bd.doc_id =d.id 
where bd.batch_id =173

-- Obtener diferentes mensajes de Error de Envio
select DISTINCT (message)
from documents d 
where doc_status_id =6

-- Convertir fechas a la hora correcta segun región horaria
select doc_number documento,convert_tz(created_at,'+00:00','-4:00') fecha_cargado, created_at
from documents d 
where doc_number ='03216302';





SELECT
	d.* ,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code
FROM
	documents  d
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	house_id = 1
	AND doc_status_id IN (6, 4)
	AND doc_type_id = 1
	
	
SELECT
	COUNT(d.id) AS count
FROM
	batchs b
INNER JOIN batch_documents bd ON
	b.id = bd.batch_id
INNER JOIN documents d ON
	bd.doc_id = d.id
INNER JOIN houses h ON
	d.house_id = h.id
WHERE
	d.house_id = 1
	AND d.doc_status_id = 4
	AND batch_id= 1134
	
	
	SELECT
	d.*,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code,
	bd.send_success,
	b.id as batch_id
FROM
	batchs b
INNER JOIN batch_documents bd ON
	b.id = bd.batch_id
INNER JOIN documents d ON
	bd.doc_id = d.id
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	house_id = 1
	AND doc_status_id = 4
	AND doc_type_id = 6
LIMIT 5 OFFSET 0



SELECT
	d.*,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code,
	bd.send_success
FROM
	documents d ON
	bd.doc_id = d.id
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	d.house_id = 1
	AND d.doc_status_id = 4
LIMIT 5 OFFSET 0



SELECT
	B.id AS batch_id,
	MIN(doc_number) AS initDoc,
	MAX(doc_number) AS lastDoc
FROM
	batchs AS B
INNER JOIN batch_documents AS BD ON
	B.id = BD.batch_id
INNER JOIN documents D ON
	BD.doc_id = D.id
WHERE
	B.created_by NOT IN (
	SELECT
		id
	FROM
		users
	WHERE
		role_id = 0)
GROUP BY
	B.id
ORDER BY
	batch_id DESC
	
	SELECT ?? FROM batchs AS B INNER JOIN users AS U ON B.created_by = U.id WHERE U.role_id != 0 AND B.doc_type_id = ?
	
	
	SELECT COUNT(*) AS count FROM documents d WHERE d.house_id=1 AND d.doc_status_id=4
	
	
	SELECT
	d.*,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code
FROM
	documents_historical d
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	house_id = 1
	AND doc_status_id = 0
ORDER BY
	doc_number DESC 
LIMIT 5 OFFSET 0




SELECT 
	first_name Nombres, last_name Apellidos, email Correo, r.name Rol
FROM 
	dbfacturacion.users u INNER JOIN dbfacturacion.roles r ON u.role_id  = r.id ;


delete from dbfacturacion.documents_historical; 


