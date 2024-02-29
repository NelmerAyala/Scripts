SELECT
	SUBSTRING(inv_number, 3 ) doc_number,
	inv_control_number control_number,
	3 house_id,
	doc_type_id doc_type_id,
	0 doc_status_id,
	inv_zone doc_zone,
	inv_seller seller,
	inv_ReleaseDate doc_date,
	'migration' message,
	SUBSTRING(inv_number, 1, 1) doc_serie,
	CONVERT(p.prt_name USING LATIN1) client_name,
	inv_ReleaseDate created_at,
	NOW()  update_at,
	SUBSTRING(file_route,7) file_route 
FROM
	dbfacturacion.invoices_mirror i
INNER JOIN dbfacturacion.partners p on
	i.prt_id = p.prt_id
	