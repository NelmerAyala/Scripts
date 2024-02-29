select CONCAT( dt.type_origen  , '-', d.doc_number, '-',d.control_number,'') , d.doc_number 
from documents d inner join doc_types dt ON d.doc_type_id =dt.id 
where doc_status_id =5
order by d.doc_number DESC 


SHOW FULL PROCESSLIST;

SELECT CONCAT('KILL ',id,';') FROM information_schema.processlist WHERE user='digitalizacionusercon';


select
	* 
from 
	documents d 
where
	d.doc_number in (03219148,03219149,03199602,01053619,01053615,01053593,00213333,00213385,00213384)


	doc_number in (
03219148,
03219149,
03199602,
01053619,
01053615,
01053593,
00213333,
00213385,
00213384
)  or doc_number like '032191494%'



	
	
	SELECT
	d.* ,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code
FROM
	documents d
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	d.house_id = 1
	AND d.doc_type_id = 1
	AND d.doc_status_id IN (3, 4, 6)
	AND doc_number BETWEEN CAST('3219148' as UNSIGNED) AND CAST('3219149' as UNSIGNED)
	
	
	
	
DELETE FROM dbfacturacion.batch_documents;

DELETE FROM dbfacturacion.batchs;

DELETE FROM dbfacturacion.external_mailing_documents;

DELETE FROM dbfacturacion.external_mailing;

DELETE FROM dbfacturacion.documents_historical;

DELETE FROM dbfacturacion.documents
WHERE doc_number not in ('03219148','03219149');



SELECT
	d.* ,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code
FROM
	documents d
INNER JOIN houses h ON
	d.house_id = h.id
INNER JOIN doc_status ds ON
	d.doc_status_id = ds.id
INNER JOIN doc_types dt ON
	d.doc_type_id = dt.id
WHERE
	d.house_id = 1
	AND d.doc_type_id = 1
	AND d.doc_status_id IN (3, 4, 6)
	AND doc_number LIKE '%00000012%' 
