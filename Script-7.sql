select COUNT(c.numero_doc), c.numero_doc
from TIGALAC.dbo.compras c
where c.fecha_aplicacion_retencion > '2023-01-31'
group by c.numero_doc 
HAVING COUNT(c.numero_doc) > 1;


select COUNT(c.id)
from TIGALAC.dbo.compras c
where c.numero_comprobante > '0'

select COUNT(c.id)
from TIGALAC.dbo.compras c
where c.numero_comprobante > '0' and c.createdAt >= '2023-10-25'



--UPDATE compras set ArchivoId = null, status_compra = 1 where ArchivoId=6

SELECT  * from 
docu
doc_status_id =6


-- TIGALAC.dbo.compras 
select * from TIGALAC.dbo.NewTable nt
where nt.numero_doc not in (select numero_doc from TIGALAC.dbo.compras c )


select * from TIGALAC.dbo.NewTable nt
where nt.numero_doc in (select numero_doc from TIGALAC.dbo.compras c)


select c.numero_doc, c.numero_rif, TipoDocumentoId, fecha_aplicacion_retencion  from TIGALAC.dbo.compras c
where c.fecha_aplicacion_retencion > '2023-01-31' and c.numero_doc not in (select numero_doc from TIGALAC.dbo.NewTable nt)


select numero_doc from TIGALAC.dbo.NewTable nt where numero_doc ='00920'

delete from TIGALAC.dbo.NewTable 


--ventas

select COUNT(c.numero_doc), c.numero_doc
from TIGALAC.dbo.ventas c
group by c.numero_doc , TipoDocumentoId 
HAVING COUNT(c.numero_doc) > 1;

select * from TIGALAC.dbo.NewTable_1 nt
where nt.numero_doc not in (select numero_doc from TIGALAC.dbo.ventas c)


select * from TIGALAC.dbo.NewTable_1 nt
where nt.numero_doc in (select numero_doc from TIGALAC.dbo.compras c)


select c.numero_doc, c.numero_rif, TipoDocumentoId from TIGALAC.dbo.ventas c
where c.numero_doc not in (select numero_doc from TIGALAC.dbo.NewTable_1 nt)












SELECT id, numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where TIGALAC.dbo.compras.fecha_aplicacion_retencion > '2023-01-31' and TipoDocumentoId =1;


SELECT id, numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where TIGALAC.dbo.compras.fecha_aplicacion_retencion > '2023-01-31' and TipoDocumentoId =3;


SELECT id, numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where TIGALAC.dbo.compras.fecha_aplicacion_retencion > '2023-01-31' and TipoDocumentoId =4;


SELECT id, numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where TIGALAC.dbo.compras.fecha_aplicacion_retencion > '2023-01-31' ;


SELECT id, numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where TIGALAC.dbo.compras.fecha_aplicacion_retencion > '2023-01-31' ;


DELETE FROM TIGALAC.dbo.NewTable;




fecha_aplicacion_retencion >= '2023-03-01' and fecha_aplicacion_retencion <= '2023-03-31' and status_venta =1




UPDATE TIGALAC.dbo.ventas SET status =6
where fecha_aplicacion_retencion > '2023-03-31' and status_venta =1



DELETE FROM TIGALAC.dbo.NewTable_1;





fecha_aplicacion_retencion >= '2023-03-01' and fecha_aplicacion_retencion <= '2023-03-31' and ArchivoId !=21


SELECT COUNT(numero_doc), numero_doc, fecha_doc 
FROM TIGALAC.dbo.ventas v
WHERE fecha_aplicacion_retencion >= '2023-03-01' AND fecha_aplicacion_retencion <= '2023-03-31'
GROUP BY numero_doc, TipoDocumentoId, numero_rif, fecha_doc 
HAVING COUNT(numero_doc)>1


520
1709




DELETE from TIGALAC.dbo.ventas where fecha_aplicacion_retencion  >='2023-01-01' and fecha_aplicacion_retencion <='2023-01-31';


DELETE from TIGALAC.dbo.ventas where fecha_aplicacion_retencion  >='2023-02-01' and fecha_aplicacion_retencion <='2023-02-28';

DELETE from TIGALAC.dbo.ventas where fecha_aplicacion_retencion  >='2023-03-01' and fecha_aplicacion_retencion <='2023-03-31' and ArchivoId < 21;

DELETE from TIGALAC.dbo.ventas where fecha_aplicacion_retencion  >='2023-04-01' and fecha_aplicacion_retencion <='2023-04-30';


UPDATE TIGALAC.dbo.ventas SET status_venta = 7   where status_venta = 1 and fecha_aplicacion_retencion >= '2023-04-01'

select * from TIGALAC.dbo.ventas  where status_venta = '1' and fecha_aplicacion_retencion >= '2023-04-01'



SELECT COUNT(numero_doc),numero_doc  
from TIGALAC.dbo.ventas  
where 
	fecha_aplicacion_retencion  >='2023-03-01' 
	and fecha_aplicacion_retencion <='2023-03-31' 
	and numero_doc ='03207856'
GROUP by numero_doc, TipoDocumentoId, numero_rif 
HAVING COUNT(numero_doc)  >1


SELECT COUNT(numero_doc),numero_doc  
from TIGALAC.dbo.ventas  
where 
	fecha_aplicacion_retencion  >='2023-04-01' 
	and fecha_aplicacion_retencion <='2023-04-30' 
	and status_venta = 1
GROUP by numero_doc, TipoDocumentoId, numero_rif 
HAVING COUNT(numero_doc)  >1



SELECT COUNT(numero_doc),numero_doc  
from TIGALAC.dbo.ventas  
GROUP by numero_doc, TipoDocumentoId, numero_rif 
HAVING COUNT(numero_doc)  >1

SELECT *
FROM TIGALAC.dbo.ventas 
where fecha_aplicacion_retencion  >='2023-04-01' and fecha_aplicacion_retencion <='2023-04-31' AND status_venta =3
AND fecha_comprobante_retencion < fecha_doc


SELECT *
FROM TIGALAC.dbo.ventas 
where fecha_aplicacion_retencion  >='2023-03-01' and fecha_aplicacion_retencion <='2023-03-31' AND status_venta =3
AND fecha_comprobante_retencion < fecha_doc 

fecha_aplicacion_retencion >='2023-04-14'




SELECT *
FROM 



DELETE FROM TIGALAC.dbo.ventas 
where ArchivoId IS NULL AND ArchivoId IS NULL AND status_venta = 1;

Updated Rows	52814


fecha_aplicacion_retencion >='2023-04-01' and status_venta =1



UPDATE TIGALAC.dbo.ventas SET status_venta = 1, ArchivoId =NULL  where ArchivoId = 38;



SELECT COUNT(numero_doc),numero_doc  
from TIGALAC.dbo.compras c  
where 
	fecha_aplicacion_retencion  >='2023-04-01' 
	and fecha_aplicacion_retencion <='2023-04-30' 
	and status_compra = 1
GROUP by numero_doc, TipoDocumentoId, numero_rif 
HAVING COUNT(numero_doc)  >1



select * from 



INSERT INTO TIGALAC.dbo.compras
(numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, createdAt, createdBy, updatedAt, updatedBy, status, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId)
VALUES(N'J304717490', N'INDOMAX VENEZOLANA, C.A.', N'95131417', '2023-04-20', 0.00, 6388.06, 16.00, 1022.09, N'4', N'2023', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, N'00-151181', N'0', N'0', 0.00, 75.00, N'0', '2023-04-27', N'0', N'N', N'S', NULL, N'0', N'N', NULL, NULL, N'N', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2023-05-04 15:27:32.040', NULL, '2023-05-04 15:47:53.268', 5, 1, 47, 1, 3, 1, 1, 1, 2, 2);



ArchivoId is null and fecha_aplicacion_retencion <='2023-06-30' 



DELETE FROM TIGALAC.dbo.ventas WHERE ArchivoId is null and fecha_aplicacion_retencion <='2023-06-30'


UPDATE TIGALAC.dbo.ventas SET status_venta = 4 WHERE status_venta = 3 and ArchivoRetencionIvaVentaId  is not NULL 

SELECT * FROM 


2700 registros 
ayer 
en 1 hora



SELECT DISTINCT numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion, es_informativa, monto_iva_truncado, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, status_compra, updatedAt, ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, EstatusRetencionId, CompanyId
FROM TIGALAC.dbo.compras
where CompanyId =2 and createdAt >= '2023-08-30'


SELECT COUNT(numero_doc), numero_doc
from TIGALAC.dbo.compras c  
where 
	status_compra = 1
	and CompanyId =2
GROUP by numero_doc, TipoDocumentoId, numero_rif
HAVING COUNT(numero_doc) > 1


delete from compras where numero_doc in (
'48152',
'48244',
'49659',
'49808',
'49809') and createdAt <= '2023-08-30 13:20:00' and status_compra =1 and CompanyId =2


select * from compras where numero_doc in (
'48152',
'48244',
'49659',
'49808',
'49809') and createdAt <= '2023-08-30 13:20:00' and status_compra =0 and CompanyId =2



SELECT c.numero_doc , c.numero_comprobante 
FROM DBO.compras c
where 
numero_doc  >= '380' and numero_doc  <= '388' or (numero_doc = '004907' or numero_doc='09064' ) 


SELECT *
FROM DBO.ventas v 
where v.numero_control >= '00105416'
and  v.numero_control <= '00105426'}


SELECT  DISTINCT C.numero_doc, C.numero_control 
FROM DBO.compras c 
WHERE status_compra =1


SELECT COUNT(C.numero_doc), C.numero_doc 
FROM DBO.compras c 
WHERE status_compra =1
GROUP BY C.numero_doc 
HAVING COUNT(C.numero_doc) > 1 



SELECT *
from TIGALAC.dbo.compras c  
where 
	numero_doc  ='00000195'
	
	
asient


SELECT COUNT(v.numero_doc), v.numero_doc 
FROM DBO.ventas v  
WHERE EstatusRetencionId = 1 and createdAt >= '2023-11-12'

HAVING COUNT(C.numero_doc) > 1 
	

SELECT COUNT(c.numero_doc)
FROM DBO.compras c
WHERE EstatusRetencionId = 1 and createdAt >= '2023-11-12'


SELECT ID, nombre_company COMPAÑIA, codigo_company_galac COMPAÑIA_GALAC FROM companias c 

select * 
from compras c where c.numero_doc like '%00000002185%'

select * 
from ventas v where v.numero_doc like '%00000002185%'


SELECT *
FROM DBO.compras c
WHERE ArchivoId = 366 and CompanyId = 4

= 1 and createdAt >= '2023-11-12'



SELECT * FROM compras c where c.ArchivoId ='409';
SELECT * FROM compras c where c.ArchivoId ='420';

	
select * from archivos WHERE id = 409

SELECT * FROM proveedores p WHERE P.codigo_proveedor ='V298848976';


SELECT * FROM VENTAS V
WHERE numero_doc  IN (
03222957,
03222958,
03222959,
03222960,
03222961,
03222962,
03223296
) AND CompanyId = 2;

SELECT * FROM VENTAS V
WHERE numero_doc  IN (
'06619332',
'06620317', 
'06620521',
'06620522',
'06620531', 
'06620654', 
'06620655',
'06620656', 
'06620657', 
'06620532'
);

SELECT * FROM compras c
WHERE numero_doc  IN (
'06620524'
) and CompanyId = ;

SELECT * FROM ventas v 
WHERE numero_doc  IN (
'03245739','03234422'
);


SELECT * FROM compras c
WHERE numero_doc  IN (
'197957'
) and CompanyId = 5;

select * from companias c ;


SELECT * FROM compras c  
WHERE c.status_compra =1 and CompanyId =4;


SELECT numero_comprobante, numero_doc , c.ArchivoId ,C.* 
FROM compras c 
WHERE 
numero_doc  IN (
SELECT numero_doc  FROM compras c  
WHERE CompanyId =4
group by numero_rif,numero_doc , fecha_doc ,CompanyId
HAVING count(numero_doc)>1
) AND CompanyId =4;


SELECT count(numero_doc),numero_doc  FROM compras c  
WHERE CompanyId =4
group by numero_rif,numero_doc , fecha_doc ,CompanyId
HAVING count(numero_doc)>1;


SELECT * FROM companias c ;

# sillaca 
0000004685
00001047
00001459
000054
000081
000360
000509
001794
001814
001818
001821 - ASOCIACION COOPERATIVA SERVIENTREGA 2021, R.L.
001821 - DISTRIBUIDORA TECNYSUM, C.A
002142
002333
0381
2200
A675
A701



SELECT numero_comprobante, numero_doc , c.ArchivoId ,C.* 
FROM compras c 
WHERE 
numero_doc  IN (
SELECT numero_doc  FROM compras c  
WHERE CompanyId =5
group by numero_rif,numero_doc , fecha_doc ,CompanyId
HAVING count(numero_doc)>1
) AND CompanyId =5;

# Febeca
0000004684
00001046
00001460
000056 - 	DENNYS ELOY PAEZ BALOA
000080 -	MULTISERVICIOS LJ RAMIREZ, C.A
000130 -	TRANSPORTE CORZOR, C.A.
000359 -	INVERSIONES V V P 1, C.A (INVERSIONES V V P 1, C.A)
000502
000511
001790
001793 -	INDUSTRIAS OXI-NET CA
001793 -	DISTRIBUIDORA TECNYSUM, C.A
001796 -	DISTRIBUIDORA TECNYSUM, C.A
001796 -	FERREMONELCA C.A
001813 -	TRANSPORTE VENCAR 2017, C.A.
001813 -	DISTRIBUIDORA TECNYSUM, C.A
001819 -	INDUSTRIAS OXI-NET CA
001819 -	DISTRIBUIDORA TECNYSUM, C.A
002140
002335
0380
2199
673
68609 - 2 veces sin archivo
699



SELECT numero_comprobante, numero_doc , c.ArchivoId ,C.* 
FROM compras c 
WHERE 
numero_doc  IN (
SELECT numero_doc  FROM compras c  
WHERE CompanyId =6
group by numero_rif,numero_doc , fecha_doc ,CompanyId
HAVING count(numero_doc)>1
) AND CompanyId =6;

# Prisma
000503 - TRANSPORTE LA PASTORA 2022, C.A
000507
677
703


SELECT numero_comprobante, numero_doc , c.ArchivoId ,C.* 
FROM 
 compras c 
WHERE numero_doc  IN
(SELECT  numero_doc
FROM compras c 
WHERE 
numero_doc  IN (
SELECT numero_doc  FROM compras c  
WHERE CompanyId =2
group by numero_rif,numero_doc , fecha_doc ,CompanyId
HAVING count(numero_doc)>1
) AND CompanyId =2 AND c.ArchivoId IS NULL)

# Beval
0000004686
00001048
00001461
000055
000055
000055
000362
000510
001792
001795
001797
001797
001819
001820
002143
002334
2201

0000004686
00001048
00001461
000055
000055
000055
000362
000510
001792
001795
001797
001797
001819
001819
001819
001820
002143
002334
2201


SELECT * FROM compras c WHERE C.CompanyId =5 AND c.status_compra ;

C.numero_doc ='001902' ;


select * 
from compras c 
where c.numero_rif='J001021744' and c.numero_doc ='F-0001358610';


select * 
from compras c 
where c.status_compra =1 and CompanyId =5;

select * 
from compras c 
where c.status_compra =8 and CompanyId =5;

select * 
from compras c 
where 
(c.numero_rif='J001021744' AND c.numero_doc='F-0001358610') OR
(c.numero_rif='J315104954' AND c.numero_doc='002335') OR
(c.numero_rif='J306221034' AND c.numero_doc='011475') OR
(c.numero_rif='J306221034' AND c.numero_doc='011474') OR
(c.numero_rif='J003481157' AND c.numero_doc='18063') OR
(c.numero_rif='J408070197' AND c.numero_doc='000108') OR
(c.numero_rif='J500216033' AND c.numero_doc='000593') OR
(c.numero_rif='J003439940' AND c.numero_doc='A001573074') OR
(c.numero_rif='J317504941' AND c.numero_doc='0918') OR
(c.numero_rif='J000128820' AND c.numero_doc='114552') OR
(c.numero_rif='J503379782' AND c.numero_doc='00000117') OR
(c.numero_rif='J502349740' AND c.numero_doc='414') OR
(c.numero_rif='J502349740' AND c.numero_doc='415') OR
(c.numero_rif='J408977354' AND c.numero_doc='0778') OR
(c.numero_rif='J001459391' AND c.numero_doc='00023224') OR
(c.numero_rif='J502349740' AND c.numero_doc='431') OR
(c.numero_rif='J502349740' AND c.numero_doc='438') OR
(c.numero_rif='J502349740' AND c.numero_doc='419') OR
(c.numero_rif='J502349740' AND c.numero_doc='421') OR
(c.numero_rif='J502349740' AND c.numero_doc='422') OR
(c.numero_rif='J502349740' AND c.numero_doc='434') OR
(c.numero_rif='J000033870' AND c.numero_doc='031586') OR
(c.numero_rif='J501682801' AND c.numero_doc='00000256') OR
(c.numero_rif='J298652780' AND c.numero_doc='003172') OR
(c.numero_rif='J406041734' AND c.numero_doc='00018655') OR
(c.numero_rif='J075260716' AND c.numero_doc='00094466') OR
(c.numero_rif='J000524890' AND c.numero_doc='13397723') OR
(c.numero_rif='J000076103' AND c.numero_doc='96258785') OR
(c.numero_rif='J000076103' AND c.numero_doc='96258786');

-- Archivo Generado = 1288


-- ---------------------------------------------

select * 
from compras c 
where c.numero_doc ='0000153770';

select * 
from compras c 
where c.status_compra =8 and CompanyId =4;

select *
from compras c 
where 
(c.numero_rif='J003439940' AND c.numero_doc='A001649454') OR
(c.numero_rif='J306221034' AND c.numero_doc='011477') OR
(c.numero_rif='J502901353' AND c.numero_doc='078') OR
(c.numero_rif='J003481157' AND c.numero_doc='18064') OR
(c.numero_rif='J300592359' AND c.numero_doc='0000153770') OR
(c.numero_rif='J000524890' AND c.numero_doc='13397724') OR
(c.numero_rif='J000033870' AND c.numero_doc='031588') OR
(c.numero_rif='J000213577' AND c.numero_doc='79203') OR
(c.numero_rif='J000213577' AND c.numero_doc='79204') OR
(c.numero_rif='J000213577' AND c.numero_doc='79205') OR
(c.numero_rif='J308749923' AND c.numero_doc='29770') OR
(c.numero_rif='J299008656' AND c.numero_doc='009241');

-- Archivo Generado = 1289



-- ---------------------------------------------

select * 
from compras c 
where c.status_compra =1 and CompanyId =2;

select * 
from compras c 
where c.status_compra =8 and CompanyId =2;

select *
from compras c 
where 
(c.numero_rif='J075383486' AND c.numero_doc='44239') OR
(c.numero_rif='J075383486' AND c.numero_doc='44240') OR
(c.numero_rif='J075383486' AND c.numero_doc='44241') OR
(c.numero_rif='J304391030' AND c.numero_doc='0020841') OR
(c.numero_rif='J305277656' AND c.numero_doc='00020200') OR
(c.numero_rif='J305277656' AND c.numero_doc='00020202') OR
(c.numero_rif='J305277656' AND c.numero_doc='00020203') OR
(c.numero_rif='J305277656' AND c.numero_doc='00020204') OR
(c.numero_rif='J000025479' AND c.numero_doc='313470') OR
(c.numero_rif='J306221034' AND c.numero_doc='011476') OR
(c.numero_rif='J502348786' AND c.numero_doc='201') OR
(c.numero_rif='J000033870' AND c.numero_doc='031587') OR
(c.numero_rif='J502348786' AND c.numero_doc='200') OR
(c.numero_rif='J502348786' AND c.numero_doc='196') OR
(c.numero_rif='J502348786' AND c.numero_doc='203') OR
(c.numero_rif='J075383486' AND c.numero_doc='44247') OR
(c.numero_rif='J075383486' AND c.numero_doc='44248') OR
(c.numero_rif='J075383486' AND c.numero_doc='44249') OR
(c.numero_rif='J306585184' AND c.numero_doc='0000000247') OR
(c.numero_rif='J075383486' AND c.numero_doc='44250') OR
(c.numero_rif='J306585184' AND c.numero_doc='0000000248') OR
(c.numero_rif='J306758828' AND c.numero_doc='0000014301') OR
(c.numero_rif='J310334587' AND c.numero_doc='0000006303') OR
(c.numero_rif='J310334587' AND c.numero_doc='0000006305') OR
(c.numero_rif='J310334587' AND c.numero_doc='0000006304');

-- Archivo Generado = 1290


-- ---------------------------------------------

select * 
from compras c 
where c.status_compra =1 and CompanyId =6;

select * 
from compras c 
where c.status_compra =8 and CompanyId =6;

select *
from compras c 
where 
(c.numero_rif='J500216033' AND c.numero_doc='000591') OR
(c.numero_rif='J502678034' AND c.numero_doc='218') OR
(c.numero_rif='J000033870' AND c.numero_doc='031589');

-- Archivo Generado = 1291

SELECT *
 FROM COMPRAS C
 WHERE c.numero_doc in ( '003157' ,'003160','003156'  )

