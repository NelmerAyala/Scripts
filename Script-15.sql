SELECT DISTINCT message FROM documents d  
WHERE house_id = 2 and doc_status_id =6 


select DISTINCT b.created_by, u.* from batchs b inner join users u  on b.created_by = u.id 

1 2	2	Nelmer	Ayala	nayala@intelix.biz	$2a$10$yQ6EvhUaZ2QmC.ANNoIkz.b29AX/gtvChzcmduesnb30U1DoOmRnu	0	1	
4 3	3	Jesus	Peña	jpena@intelix.biz	$2a$10$RnnZ6X6ncgyWyWee8.Flouiv7Dd6LdxfUzb5jZswev7mctm70VBNK	0	1	
6	6	Jose	Castro	jcastro@intelix.biz	$2a$10$I2hLT0pdPji5kpXKaSWfh.G/gEODkbpJB4l0tqGAiTdKhKY5IRw6m	0	1	
10 29	29	Windry Betzabeth	González Aguilera	wgonzalez@mayoreo.biz	$2a$10$G9SpC4Kv18UO.lmk7JyOA.soou90I6fqz80/hQbrhlwlkK0XhMD9y	1	1	
21 31	31	Yefferson	Ocanto	despacho@beval.biz	$2a$10$0IDb4AwjRfpF2s45S2MKoObLZc10Ckk.otZ/PzvncdxIYs0zqJOGe	3	1	
7 33	33	Rosi	Salvatti	rsalvati@intelix.biz	$2a$10$sxxHyi2LjEuFaSroC3Mh/e.e73Whk/lYhG31mSnWSnrQU/o59Stae	0	1	
29 41	41	Jesús	Martinez	jmartinez@beval.biz	$2a$10$6zxDOSYLu/kjoLDlGQhzIuvlpOk5tptZJIPRtGbRBZ0WT81NEZTD6	3	1	
43 55	55	Jhon	Piñero	Jpinero@beval.biz	$2a$10$LP7akfkTQ.bO38FT6.NQSOe.z0h0vOBnWmmIU2EZFARQZEQUYVbli	3	1	

36 48	Maria	Montes de Oca	mmontes@sillaca.biz	$2a$10$1T9e1UB2HYtQG59Du9JQ3.sW9B0QUmomLx05Xn2eenY9JheMF.Ela


DELETE FROM external_mailing_documents;
DELETE FROM external_mailing;

ALTER TABLE external_mailing ADD FOREIGN KEY (`created_by`) REFERENCES `users_houses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;



DELETE FROM batch_documents;
DELETE FROM batchs;

# Eliminar CONSTRAINT
ALTER TABLE batchs DROP FOREIGN KEY users_batch_fk;

# Crear nuevo CONSTRAINT
ALTER TABLE batchs ADD FOREIGN KEY (`created_by`) REFERENCES `users_houses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


SELECT 
	COUNT(dh.house_id), h.name 
FROM 
	documents_historical dh
	INNER JOIN houses h ON dh.house_id = h.id 
group by house_id 



SELECT 
	*
FROM 
	documents d
WHERE house_id = 3	


DELETE  FROM documents WHERE house_id = 3
	
group by house_id 

select *
from documents d 
where house_id = 2 AND doc_status_id =6 AND  seller !=156

select *
from documents d 
where house_id = 2 AND doc_status_id =1

update documents set doc_status_id=6 
where house_id = 2 AND doc_status_id =1

SHOW VARIABLES LIKE 'connect_timeout';

SHOW VARIABLES LIKE 'wait_timeout';

SHOW VARIABLES LIKE 'interactive_timeout';

SET GLOBAL connect_timeout=60;


SELECT `id` FROM `documents` WHERE house_id = 2 AND id IN (43614)


SELECT * FROM documents d WHERE d.doc_number IN (
'03206587','03206614','03206642','03206643','03206644','03215137','03221856','03225015','03225016',
'03228188','03228189','03228190');


SELECT * FROM documents_historical dh WHERE dh.doc_number IN (
'03206587','03206614','03206642','03206643','03206644','03215137','03221856','03225015','03225016',
'03228188','03228189','03228190');


SELECT  DISTINCT dt.code, dt.name, dt.id 
from doc_types dt inner join documents d on d.doc_type_id = dt.id