ventas: id > 185000 and status_venta =4
186503
186137
185383
185134
185110

ArchivoId
105
102
99
93
93

ArchivoIdRetencionVentas
111
111
111
111
111



COMPRAS: id >6100 and status_compra  = 0 and EstatusRetencionId =2
6191
6190
6189
6188
6187
6186
6185

ArchivoId
109
109
109
109
109
109
109


id >6100 and status_compra  = 0 and EstatusRetencionId =1
Id
6195
6194
6193

ArchivoID
115
115
114


03200526


UPDATE TIGALAC.dbo.ventas
SET numero_doc='00000001',  status_venta = (CASE WHEN status_venta = 1 then 1 else 3 end)
WHERE id=6002 and status_venta in (0,1);


UPDATE [10.57.129.126\TIGALAC,1444].[TIGALAC].[dbo].[VENTAS]
			SET numero_comprobante = @NUMERO_COMPROBANTE,
				monto_iva_retenido = @MONTO,
				fecha_aplicacion_retencion = @FECHA_APLICACION,
				fecha_comprobante_retencion = @FECHA_RETENCION,
				status_venta = CASE WHEN STATUS_VENTA = 1 THEN STATUS_VENTA ELSE 3 END,
				EstatusRetencionId = 1
			WHERE NUMERO_DOC = @NUM_FAC AND STATUS_VENTA IN (0, 1)
			
			
			

SELECT *
FROM DBO.compras c 
where c.numero_doc in (
'004907'	,
'09064'	,
'380'	,
'381'	,
'382'	,
'383'	,
'384'	,
'385'	,
'386' ,
'387'	,
'388'	
)


SELECT *
FROM DBO.compras c 
where c.numero_control >= '00105416'
and  c.numero_control <= '00105426'	


SELECT *
FROM DBO.ventas v 
where v.numero_control >= '00105416'
and  v.numero_control <= '00105426'


004907	00105416
09064	00105417
380	00105418
381	00105419
382	00105420
383	00105421
384	00105422
385	00105423
386	00105424
387	00105425
388	00105426
