SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/2022/%'
-- 130981	

	
SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/2023/%'
-- 122478	
	
	
SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/bonificacion/%'
-- 24097	
	
	
	
SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/cargo_transporte/%'
-- 1
	

SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/factura/%'
-- 36632
	

SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/nota_credito/%'
-- 998

	
SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and file_route like '%pdf/febeca/nota_debito/%'
-- 120
	
	
select 130981 + 122478 + 24097 + 1 + 36632 + 998 + 120
-- 315307


SELECT
	COUNT(id) 
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and doc_status_id = 0
	and SUBSTRING(file_route, 1,27) not in ('pdf/febeca/factura', 'pdf/febeca/cargo_transporte', 'pdf/febeca/bonificacion', 'pdf/febeca/nota_credito', 'pdf/febeca/nota_debito' )
	
SELECT
	COUNT(id) 
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and doc_status_id = 0
	and
( 
	file_route not like '%pdf/febeca/factura%'
	or file_route not like '%pdf/febeca/cargo_transporte%'
	or file_route not like '%pdf/febeca/bonificacion%'
	or file_route not like '%pdf/febeca/nota_credito%'
	or file_route not like '%pdf/febeca/nota_debito%'
)


SELECT
	COUNT(id)
FROM
	dbfacturacion.documents_historical
where
	house_id = 2
	and doc_status_id = 0
	and SUBSTRING(file_route, 1,18) != 'pdf/febeca/factura'
	and SUBSTRING(file_route, 1,27) != 'pdf/febeca/cargo_transporte'
	and SUBSTRING(file_route, 1,23) != 'pdf/febeca/bonificacion'
	and SUBSTRING(file_route, 1,23) != 'pdf/febeca/nota_credito'
	and SUBSTRING(file_route, 1,22) != 'pdf/febeca/nota_debito'
	and SUBSTRING(file_route, 1,15) != 'pdf/febeca/2022'
	and SUBSTRING(file_route, 1,15) != 'pdf/febeca/2023'
	

	
	
	