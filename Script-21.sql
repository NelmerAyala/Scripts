SELECT *
FROM SOFTLAndqa.FEBECA.CLIENTE c 
WHERE CLIENTE IN ('81-09-986');

SELECT
	-- id,
	'BEVAL' AS compania_sistema_origen,
	'0001' AS consecutivo_compania,
	P.PROVEEDOR AS codigo_proveedor,
	NOMBRE AS nombre_proveedor,
	CONTACTO AS contacto,
	P.PROVEEDOR AS numero_rif,
	'' AS numero_nit,
	CONCAT(TELEFONO1, ' / ', TELEFONO2) AS telefono,
	DIRECCION AS direccion,
	FAX AS fax,
	E_MAIL AS email,
	R.PORCENTAJE AS porcentaje_retencion_iva,
	'' cuenta_contable_cxp,
	'' cuenta_contable_gastos,
	'' numero_lote,
	'' nombre_operador,
	'' fecha_modificacion,
	'' cuenta_iva_gasto_costo,
	'' cuenta_contable_retencion_islr,
	'NORET' codigo_retencion,
	'' numero_ruc,
	'' codigo_contribuyente,
	'' tipo_proveedor_saw,
	'' usa_beneficiario_de_cheque_saw,
	'' errores,
	p.U_TIPOPERSONA TipoPersonaId,
	'CON RIF' TipoProveedorId
	-- status_proveedor, -- Default 1
	-- createdAt, -- Default NOW
	-- updatedAt,
	-- status -- Default 1
FROM
	-- TIGALAC.dbo.proveedores;
	SOFTLANDQA.BEVAL.PROVEEDOR P
	INNER JOIN SOFTLANDQA.BEVAL.PROV_RETENCION PR ON P.PROVEEDOR = PR.PROVEEDOR
	INNER JOIN SOFTLANDQA.BEVAL.RETENCIONES R ON PR.CODIGO_RETENCION = R.CODIGO_RETENCION
WHERE 
	P.ACTIVO = 'S'
	--
	AND P.E_MAIL IS NOT NULL AND TRIM(P.E_MAIL) != ''
	
	
	

	select distinct p.REGIMEN_TRIB 
	FROM
	-- TIGALAC.dbo.proveedores;
	SOFTLANDQA.BEVAL.PROVEEDOR P
	
	
	SELECT * FROM SOFTLANDQA.FEBECA.TABLA_UDF WHERE TABLA ='FACTURA';

	SELECT * FROM SOFTLANDQA.FEBECA.CLIENTE c where CLIENTE ='45-73-086'
	
	select * from SOFTLANDQA.FEBECA.FACTURA f where FACTURA  ='06585450';


select * from PRODUSOFT.febeca.PS_AFV_JSON paj where paj.FECHA_ENVIO_SERVICIO >= '2023-12-26' and (paj.ENTIDAD like '%CLIEN%' OR paj.ENTIDAD like '%RUTA%')

select * from PRODUSOFT.febeca.PS_AFV_JSON paj where paj.FECHA_ENVIO_SERVICIO >= '2023-12-26' and ( paj.ENTIDAD like '%CL%')

select ENTIDAD ,TIPO_SERVICIO  from PRODUSOFT.febeca.PS_AFV_JSON paj where paj.FECHA_ENVIO_SERVICIO >= '2023-10-01' and ( paj.ENTIDAD like '%ZONA_CLIENTE%')


order by FECHA_ENVIO_SERVICIO DESC;

select * from PRODUSOFT.febeca.PS_AFV_JSON paj where paj.ENTIDAD ='RUTA_DETALLE';


SELECT *
FROM PRODUSOFT.[GLOBAL].PS_AFV_JSON j (NOLOCK)  --inner join SOFTLANDPRD.febeca.cliente c on c.PS_AFV_ID_CLIENTE = JSON_VALUE(CAST(j.JSON AS NVARCHAR(MAX)), '$.ID')
WHERE ENTIDAD like '%ARTICULO%' 
 AND CAST(FECHA_ENVIO_SERVICIO AS DATE) >= '2024-01-30'
 AND JSON_VALUE(CAST(JSON AS NVARCHAR(MAX)), '$.ID') IN (
'114847',
'114848',
'114849',
'114850');


SELECT A.ARTICULO, A.PS_AFV_ARTICULO_ID , eb.CANT_TRANSITO, eb.CANT_RESERVADA ,eb.CANT_DISPONIBLE ,eb.CANT_NO_APROBADA , eb.CANT_VENCIDA ,eb.CANT_PRODUCCION, eb.CANT_PEDIDA , eb.CANT_REMITIDA 
FROM SOFTLANDQA.BEVAL.ARTICULO A INNER JOIN SOFTLANDQA.BEVAL.EXISTENCIA_BODEGA eb ON A.ARTICULO = EB.ARTICULO 
WHERE A.ARTICULO IN ('01-01-A02','01-01-A03','01-01-A04','01-01-A01');

SELECT *
FROM SOFTLANDQA.BEVAL.EMBARQUE_LINEA el 
WHERE EL.ARTICULO IN ('01-01-A02','01-01-A03','01-01-A04','01-01-A01');

{"CASA":0,"ID":114850,"NIVEL_PRECIO":16,"DESCUENTO_POR_EMPAQUE":0.00000000,"UNIDAD_DESCUENTO_POR_EMPAQUE":4,"EXISTENCIA":2,"MULTIPLO_VENTA":0.00000000,"UNIDAD_VENTA_MULTIPLO_VENTA":"UND","PRECIO":65.00000000,"FECHA_OPERACION":"2024-01-30T09:34:44.497"}

SELECT *
FROM SOFTLANDQA.SILLACA.CLIENTE c WHERE c.U_COD_AFV =6521521;
