select
	d.*,
	h.name house_name,
	h.bucket house_bucket,
	ds.folder_default status_folder_default,
	dt.code_origen doc_type_code,
	bd.send_success
from
	pmv.batchs b
inner join pmv.batch_documents bd on
	b.id = bd.batch_id
inner join pmv.documents d on
	bd.doc_id = d.id
inner join pmv.houses h on
	d.house_id = h.id
inner join pmv.doc_status ds on
	d.doc_status_id = ds.id
inner join pmv.doc_types dt on
	d.doc_type_id = dt.id
where
	b.id = 21
	
	
SELECT d.*, h.name house_name, h.bucket house_bucket, ds.folder_default status_folder_default FROM pmv.documents_historical d INNER JOIN pmv.houses h ON d.house_id = h.id INNER JOIN pmv.doc_status ds ON d.doc_status_id = ds.id

SELECT d.*, h.name house_name, h.bucket house_bucket, ds.folder_default status_folder_default FROM pmv.documents_historical d INNER JOIN pmv.houses h ON d.house_id = h.id INNER JOIN pmv.doc_status ds ON d.doc_status_id = ds.id WHERE doc_status_id='0' AND house_id='1' 

SELECT d.*, h.name house_name, h.bucket house_bucket, ds.folder_default status_folder_default FROM pmv.documents_historical d INNER JOIN pmv.houses h ON d.house_id = h.id INNER JOIN pmv.doc_status ds ON d.doc_status_id = ds.id WHERE d.doc_status_id=0 AND d.house_id=1 LIMIT 5 OFFSET 0




---
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(183, '03192009', '00-4845406', 1, 1, 3, '053', 1, '2022-11-28 00:00:00', NULL, 'A', 'REFYL C.A.', '2022-12-16 16:08:53', '2022-12-16 16:08:53');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(184, '03192825', '00-4846227', 1, 1, 4, '053', 1, '2022-11-28 00:00:00', '', 'A', 'REPUESTOS L''ARENAS S.R.L', '2022-12-16 16:08:53', '2022-12-16 16:08:53');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(185, '414810', '0-4848414', 1, 4, 3, '053', 4, '2022-11-29 00:00:00', NULL, 'A', 'CARDANES CARABOBO C.A.', '2022-12-16 16:08:59', '2022-12-16 16:08:59');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(186, '03190030', '00-4842907', 1, 1, 3, '074', 1, '2022-11-28 00:00:00', NULL, 'A', 'SULVACAR C.A.', '2022-12-16 16:09:01', '2022-12-16 16:09:01');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(187, '212560', '00-4840450', 1, 5, 3, '053', 5, '2022-11-29 00:00:00', NULL, 'A', 'INVERSIONES FERRER MOTOR''S EL SOCORRO C.A.', '2022-12-16 16:10:31', '2022-12-16 16:10:31');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(188, '414609', '00-4844614', 1, 4, 3, '053', 4, '2022-11-29 00:00:00', NULL, 'A', 'PUNTO VAS PARAGUANA C.A.', '2022-12-16 16:10:32', '2022-12-16 16:10:32');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(189, '03192827', '00-4846229', 1, 1, 4, '053', 1, '2022-11-28 00:00:00', '', 'A', 'FRENOS PASTI-BANDA R.A. C.A.', '2022-12-16 16:10:32', '2022-12-16 16:10:32');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(190, '03192828', '00-4846230', 1, 1, 5, NULL, NULL, NULL, 'No se consiguió el documento en el sistema origen', 'A', NULL, '2022-12-16 16:10:34', '2022-12-16 16:10:34');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(191, '03192826', '00-4846228', 1, 1, 4, '053', 1, '2022-11-28 00:00:00', '', 'A', 'FRENOS PASTI-BANDA R.A. C.A.', '2022-12-16 16:10:34', '2022-12-16 16:10:34');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(192, '1053242', '00-4848415', 1, 2, 3, '053', 2, '2022-11-29 00:00:00', NULL, 'C', 'AUTO REPUESTOS BUCARAL C.A.', '2022-12-16 16:10:34', '2022-12-16 16:10:34');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(193, '414809', '00-4848413', 1, 4, 5, NULL, NULL, NULL, 'No se consiguió el documento en el sistema origen', 'A', NULL, '2022-12-16 16:10:34', '2022-12-16 16:10:34');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(194, '212978', '00-4848407', 1, 5, 3, '053', 5, '2022-11-29 00:00:00', NULL, 'A', 'MULTIREPUESTOS CABRERA C.A.', '2022-12-16 16:10:35', '2022-12-16 16:10:35');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(195, '03192829', '00-4846231', 1, 1, 3, '053', 1, '2022-11-28 00:00:00', NULL, 'A', 'JOSE RAFAEL DIAZ SANTAMARIA', '2022-12-16 16:10:35', '2022-12-16 16:10:35');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(196, '1053019', '00-4840098', 1, 2, 3, '053', 2, '2022-11-29 00:00:00', NULL, 'C', 'CORPORACION DACOLL C.A.', '2022-12-16 16:10:36', '2022-12-16 16:10:36');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(197, '1053243', '00-4848416', 1, 2, 3, '053', 2, '2022-11-29 00:00:00', NULL, 'C', 'INVERSIONES AREBCIBIA C.A.', '2022-12-16 16:10:37', '2022-12-16 16:10:37');
INSERT INTO pmv.documents
(id, doc_number, control_number, house_id, doc_type_id, doc_status_id, doc_zone, seller, doc_date, message, doc_serie, client_name, created_at, update_at)
VALUES(198, '212976', '00-4848405', 1, 5, 5, NULL, NULL, NULL, 'No se consiguió el documento en el sistema origen', 'A', NULL, '2022-12-16 16:10:37', '2022-12-16 16:10:37');
