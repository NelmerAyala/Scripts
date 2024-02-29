DBCC CHECKIDENT (status_transacciones, RESEED, 0)
INSERT INTO 
        status_transacciones (descripcion_status, codigo_status) 
VALUES 
        ('Generado', 0),
        ('Pendiente', 1),
        ('Anulado', 2),
        ('Actualizado', 3),
        ('Actualizado y Generado', 4);

INSERT INTO
    tipos_documentos (tipo_doc, descripcion_tipo_doc)
VALUES
    ('FAC', 'Factura'),
    ('N/E', 'Nota de Entrega'),
    ('N/D', 'Nota de Débito'),
    ('N/C', 'Nota de Crédito'),
    ('CER', 'Certificaciones'),
    ('NCR','Nota de Crédito Resumen'),
    ('RRD','Retención Resumen Diario de Ventas'),
    ('R/D','Resumen Diario de Ventas'),
    ('V/P','Venta de Pasajes Aéreos'),
    ('ANU','Factura Anulada'),
    ('RNC','Resumen no contribuyente');


INSERT INTO
    tipos_compras_ventas (tipo_compra_venta,descripcion_tipo_compra_venta)
VALUES
    ('C/E', 'Exentas'),
    ('CIM', 'De Importación'),
    ('CIN', 'Internas'),
    ('PLC', 'De Puerto Libre'),
    ('CIP', 'Importación Pto. Libre'),
    ('EXO', 'Exoneradas'),
    ('NSI', 'No sujetas a impuesto'),
    ('SDC', 'Sin derecho a crédito fiscal'),
    ('VEX', 'Exentas'),
    ('VEC', 'Contribuyentes'),
    ('VNC', 'No Contribuyentes'),
    ('PLV', 'De Puerto Libre'),
    ('VNP', 'A no Contrib. Pto. Libre'),
    ('VEP', 'De Exportación');


INSERT INTO
    estatus_documentos (estatus_doc, descripcion_estatus_doc)
VALUES
    ('CO', 'Cobrado'),
    ('DD', 'Débito Diferidos'),
    ('PA', 'Pagado'),
    ('CD','Créditos Diferidos');


INSERT INTO
    tipos_creditos (tipo_credito, descripcion_tipo_credito)
VALUES
    ('CFD','Crédito deducible'),
    ('CFP','Crédito Prorrateable'),
    ('CFN','Crédito no deducible');


INSERT INTO
    tipos_transacciones ( tipo_transaccion, descripcion_tipo_transaccion)
VALUES
    ('01', 'Registro'),
    ('02', 'Complemento'),
    ('03', 'Anulación'),
    ('04', 'Ajuste');


INSERT INTO
    estatus_retenciones (estatus_retencion,descripcion_estatus_retencion)
VALUES
    ('RE', 'Retenida'),
    ('PR', 'Por retener');

INSERT INTO
    tipos_archivos (tipo_archivo, descripcion_tipo_archivo)
VALUES
    ('VEN', 'Ventas'),
    ('COM', 'Compras'),
    ('RVN', 'Retencion de IVA Ventas');


INSERT INTO 
    procesos_auditables (nombre, descripcion, createdAt, updatedAt, status)
VALUES
    ('LOGIN', 'INICIO DE SESIÓN', '', '', 1),
    ('GENERA_TXT_COMPRAS', 'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE COMPRAS', '', '', 1),
    ('GENERA_TXT_COMPRAS_AUT', 'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE COMPRAS', '', '', 1),
    ('GENERA_TXT_VENTAS', 'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE VENTAS', '', '', 1),
    ('GENERA_TXT_VENTAS_AUT', 'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE VENTAS', '', '', 1),
    ('GENERA_TXT_VENTAS_RETENCION_IVA', 'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE RETENCIONES DE IVA DE VENTAS', '', '', 1),
    ('GENERA_TXT_VENTAS_RETENCION_IVA_AUT', 'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE RETENCIONES DE IVA DE VENTAS', '', '', 1),
    ('DESVINCULAR_TRANSACCION', 'DESVINCULAR UNA TRANSACCIÓN DE UN ARCHIVO', '', '', 1),
    ('ANULACION_ARCHIVO', 'ANULACIÓN DE ARCHIVOS', '', '', 1),
    ('CREACION_USUARIO', 'CREACIÓN DE NUEVOS USUARIOS', '', '', 1),
    ('ACTUALIZACION_USUARIO', 'ACTUALIZACIÓN DE USUARIOS POR PARTE DE UN ADMINISTRADOR', '', '', 1),
    ('ACTUALIZACION_PERFIL', 'ACTUALIZACIÓN DEL PERFÍL DE USUARIO', '', '', 1),
    ('ACTUALIZACION_CONTRASENA', 'ACTUALIZACIÓN DE CONTRASEÑA DEL PERFÍL DE USUARIO', '', '', 1),
    ('CREACION_COMPANIA', 'CREACIÓN DE NUEVAS COMPAÑIAS', '', '', 1),
    ('ACTUALIZACION_COMPANIA', 'ACTUALIZACIÓN DE COMPAÑIAS POR PARTE DE UN ADMINISTRADOR', '', '', 1),
    ('CONFIGURACION_APP', 'CONFIGURACIÓN GENERAL DE LA APLICACIÓN', '', '', 1),
    ('ACTUALIZACION_PRIVILEGIOS_USUARIOS', 'ACTUALIZACIÓN DE PRIVILEGIOS DE USUARIOS POR PARTE DE UN ADMINISTRADOR', '', '', 1),
    ('CREACION_PRIVILEGIOS_USUARIO', 'CREACIÓN DE PRIVILEGIOS DE USUARIOS POR PARTE DE UN ADMINISTRADOR', '', '', 1),
    ('CREAR_ARCHIVO', 'CREACION DE ARCHIVO TXT', '', '', 1),
    ('GENERAR_TXT_PROVEEDORES', 'GENERAR TXT PROVEEDORES', '', '', 1);

-- AWS
INSERT INTO 
    companias (nombre_company, codigo_company, codigo_company_galac, codigo_company_sistema_origen, origen, ruta_archivo_compra, ruta_archivo_venta, ruta_archivo_venta_retenciones,  ruta_archivo_proveedor) 
VALUES
	('BEVAL', '207', '0002', 'BEVAL', 'BEV', 'compras/Beval/', 'ventas/Beval/', 'ventas_retenciones/Beval/' , 'proveedores/Beval/'),
	('MUNDIAL ELECTRICO', '005', '0001', 'MUNDIAL EL', 'MUN', 'compras/Mundial Electrico/', 'ventas/Mundial Electrico/', 'ventas_retenciones\Mundial Electrico\' , 'proveedores/Mundial Electrico/'),
    ('FEBECA', '004', '0003', 'FEBECA', 'FEB', 'compras/Febeca/', 'ventas/Febeca/', 'ventas_retenciones/Febeca/' , 'proveedores/Febeca/'),
    ('SILLACA', '071', '0004', 'SILLACA', 'SIL','compras/Sillaca/', 'ventas/Sillaca/', 'ventas_retenciones/Sillaca/' , 'proveedores/Sillaca/'),
    ('PRISMA', '298', '0005', 'PRISMA', 'PRI','compras/Prisma/', 'ventas/Prisma/', 'ventas_retenciones/Prisma/' , 'proveedores/Prisma/');

INSERT INTO 
    privilegios (codigo_privilegio,	nombre_privilegio)
VALUES
    ('ADM', 'ADMINISTRADOR'),
    ('VEN', 'VENTA'),
    ('COM', 'COMPRA'),
    ('ANU', 'ANULADOR'),
    ('SU', 'SUPER ADMINISTRADOR');


-- user: admin y contraseña: admin
-- reset autoincrementable
--DBCC CHECKIDENT (users, RESEED, 0);
INSERT INTO 
    users (firstname, lastname, username, email, password) 
VALUES
    ('SUPER ADMINISTRADOR', 'APP', 'SUPERADMIN', 'SUPERADMINGIMPUESTOSYRETENCIONES@intelix.biz','$2a$10$9MQfOc4kEx.Vfz4yweGik.Qqtz.oTDRL7Dieoe5zZPi79rf.xLFlm'),
    ('ADMINISTRADOR', 'APP', 'ADMIN', 'ADMINGIMPUESTOSYRETENCIONES@intelix.biz','$2a$10$9MQfOc4kEx.Vfz4yweGik.Qqtz.oTDRL7Dieoe5zZPi79rf.xLFlm'),
    ('SOFTLAND', 'ERP', 'SOFTLAND', 'SOFTLAND@SOFTLAND.COM','$2a$10$9MQfOc4kEx.Vfz4yweGik.Qqtz.oTDRL7Dieoe5zZPi79rf.xLFlm');


-- reset autoincrementable
--DBCC CHECKIDENT (users_companias, RESEED, 0);
INSERT INTO users_companias (CompanyId,UserId,createdAt,updatedAt,status) VALUES
	 (1,1,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (2,1,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (3,1,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (4,1,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (5,1,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (1,2,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (2,2,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (3,2,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (4,2,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (5,2,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (1,3,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (2,3,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (3,3,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (4,3,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1),
	 (5,3,N'2023-01-01 00:00:00 -04:00',N'2023-01-01 00:00:00 -04:00',1);

INSERT INTO users_companias_privilegios (PrivilegioId,UserCompanyId,createdAt,createdBy,updatedAt,updatedBy,status) VALUES
	 (5,1,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (5,2,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (5,3,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (5,4,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (5,5,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (1,6,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (1,7,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (1,8,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (1,9,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (1,10,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
     (2,12,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (3,12,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1),
	 (4,12,N'2023-01-01 00:00:00 -04:00',1,N'2023-01-01 00:00:00 -04:00',1,1);


INSERT INTO 
    configuraciones (UserId, UserIdAdminOrigen,  tipo_archivo_compras, tipo_archivo_ventas, tipo_archivo_retencion_iva_ventas, 
    codigo_privilegio_super, codigo_privilegio_admin, codigo_privilegio_compras, codigo_privilegio_ventas,codigo_privilegio_anulacion, host_db, port_db, name_db, username_db, 
    password_username_db, ruta_principal_endpoints, anios_historicos_compras, meses_historicos_compras, anios_historicos_ventas, meses_historicos_ventas,
    name_directorio, raiz_directorio, createdAt, updatedAt, status)
VALUES 
(2, 3, 'COM', 'VEN', 'RVN', 'SU', 'ADM', 'COM', 'VEN','ANU', '10.57.129.126', '1444', 'TIGALAC', 'tigalacadmin', 't1g4l4c4dm1n2022$*', 'https://xddr3e2ar9.execute-api.us-east-1.amazonaws.com/api-app-gir', 1, 0, 1, 0, 's3interfacesgalacshare', 'interfaceGalac', '2022-05-25', '2022-05-25', 1);

INSERT INTO 
    compras (numero_rif, nombre_proveedor, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general, 
    monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, base_imponible_alicuota_8, porcentaje_alicuota_8, monto_impuesto_alicuota_8, 
    base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, 
    numero_factura_afectada, monto_iva_retenido, porcentaje_retencion, numero_expediente_importacion, fecha_aplicacion_retencion, numero_plantilla_importacion,
    monto_iva_truncado, es_informativa, fecha_declaracion_aduanas, numero_declaracion_aduanas, usa_prefijo, campo_definible_1, campo_definible_2, aplica_iva_10, 
    base_imponible_alicuota_9, porcentaje_alicuota_9, monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7,
    ArchivoId, TipoDocumentoId, TipoCompraVentaId, EstatusDocumentoId, TipoCreditoId, TipoTransaccionId, 
    EstatusRetencionId, CompanyId)
VALUES 
    ('00000001', 'example name 1', '1234', '2022-03-01', 10.00, 1000.00, 10.00, 10.00, '01', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000002', 'example name 2', '5678', '2021-08-02', 20.00, 2000.00, 20.00, 20.00, '02', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000003', 'example name 3', '9101', '2021-07-03', 30.00, 3000.00, 30.00, 30.00, '03', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 2),
    ('00000004', 'example name 4', '1254', '2022-03-04', 100.00, 1000.00, 10.00, 10.00, '04', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000005', 'example name 5', '5228', '2022-03-05', 25.00, 2000.00, 20.00, 20.00, '05', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000006', 'example name 6', '9111', '2022-03-06', 50.00, 3000.00, 30.00, 30.00, '06', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 2),
    ('00000007', 'example name 7', '1222', '2022-03-07', 100.00, 1000.00, 10.00, 10.00, '07', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000008', 'example name 8', '1313', '2022-03-08', 200.00, 2000.00, 20.00, 20.00, '08', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 1),
    ('00000009', 'example name 9', '4040', '2022-03-09', 360.00, 3000.00, 30.00, 30.00, '09', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 4),
    ('00000010', 'example name 10', '2020', '2022-03-10', 403.00, 4000.00, 40.00, 40.00, '10', '2022', 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, '100', '1234', '1234', 1234.00, 10.00, '123', '2022-03-07 00:00:00', '1234', 'S', 'S', '2022-03-07 00:00:00', '1234', 'S', 'campo_definible_1', 'campo_definible_2', 'S', 10.00, 10.00, 10.00, 100.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1, 3);

-- reset autoincrementable
--DBCC CHECKIDENT (ventas, RESEED, 0);
INSERT INTO 
    ventas (numero_rif, nombre_cliente, numero_doc, fecha_doc, monto_exento, base_imponible_tasa_general, porcentaje_tasa_general,
    monto_impuesto_tasa_general, mes_aplicacion, anio_aplicacion, numero_doc_hasta, base_imponible_alicuota_8, 
    porcentaje_alicuota_8, monto_impuesto_alicuota_8, base_imponible_alicuota_adicional, porcentaje_alicuota_adicional, 
    monto_impuesto_alicuota_adicional, numero_control, numero_comprobante, numero_factura_afectada, monto_iva_retenido, 
    fecha_aplicacion_retencion, numero_control_hasta, consecutivo_maquina_fiscal, descripcion_maquina_fiscal, registro_maquina_fiscal,
    consecutivo_talonario, descripcion_talonario, venta_por_cuenta_terceros, monto_iva_truncado, usa_Z, numero_Z,
    base_imponible_percepcion, monto_impuesto_percibido, aplica_iva_10, base_imponible_alicuota_9, porcentaje_alicuota_9,
    monto_impuesto_alicuota_9, base_imponible_alicuota_7, porcentaje_alicuota_7, monto_impuesto_alicuota_7, ArchivoId, TipoDocumentoId, TipoCompraventaId, EstatusDocumentoId, TipoTransaccionId,
    EstatusRetencionId, CompanyId)
VALUES 
    ('00000001', 'example name 1', '1234', '2022-03-01', 10.00, 1000.00, 10.00, 10.00, '01', '2022', '1234', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1),
    ('00000002', 'example name 2', '4567', '2022-03-02', 20.00, 2000.00, 20.00, 20.00, '02', '2022', '4567', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 3),
    ('00000003', 'example name 3', '8910', '2022-03-03', 30.00, 3000.00, 30.00, 30.00, '03', '2022', '8910', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1),
    ('00000004', 'example name 4', '12345', '2022-03-01', 10.00, 1000.00, 10.00, 10.00, '01', '2022', '12345', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1),
    ('00000005', 'example name 5', '45678', '2022-03-02', 20.00, 2000.00, 20.00, 20.00, '02', '2022', '45678', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 3),
    ('00000006', 'example name 6', '891011', '2022-03-03', 30.00, 3000.00, 30.00, 30.00, '03', '2022', '891011', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1),
    ('00000007', 'example name 7', '123456', '2022-03-01', 10.00, 1000.00, 10.00, 10.00, '01', '2022', '123456', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 1),
    ('00000008', 'example name 8', '456789', '2022-03-02', 20.00, 2000.00, 20.00, 20.00, '02', '2022', '456789', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 3),
    ('00000009', 'example name 9', '89101112', '2022-03-03', 30.00, 3000.00, 30.00, 30.00, '03', '2022', '89101112', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 4),
    ('00000010', 'example name 10', '111213', '2022-03-04', 40.00, 4000.00, 40.00, 40.00, '04', '2022', '111213', 10.00, 10.00, 10.00, 10.00, 1.00, 10.00, '1234', '1234','1234', 10.00, '2022-03-07 00:00:00', '1111', '2222', 'descripcion 2222', '2222R', '56789', 'descripcion 56789', 'S', 'S', 'S', '1234567890', 10.00, 10.00, 'S', 10.00, 100.00, 10.00, 10.00, 10.00, 10.00, null, 1, 1, 1, 1, 1, 2);


INSERT INTO 
        tipos_proveedor (tipo_proveedor, descripcion_tipo_proveedor, codigo_tipo_proveedor_galac) 
VALUES 
        ('CON RIF', 'CON RIF', 0),
        ('SIN RIF', 'SIN RIF', 1),
        ('NO RES', 'NO RESIDENCIADO', 2),
        ('NO DOM', 'NO DOMICILIADO', 3);   
    
INSERT INTO
        tipos_personas ( tipo_persona, descripcion_tipo_persona, codigo_tipo_persona_galac)
VALUES 
        ('PJD', 'Persona Juridica Domicialidad', 0),
        ('PJN', 'Persona Juridica No Domicialidad', 1),
        ('PNR', 'Persona Natural Residente', 2),
        ('PNN', 'Persona Natural No Residente', 3);

INSERT INTO 
        proveedores (compania_sistema_origen, consecutivo_compania, codigo_proveedor, nombre_proveedor, contacto, numero_rif, telefono, direccion, fax, email, porcentaje_retencion_iva, nombre_operador, codigo_retencion, TipoPersonaId, TipoProveedorId) 
VALUES 
    ('FEBECA', 1, '0000000001', 'LEASETECH,C.A. (LEASETECH, C.A.)', 'Odennys Alviarez', 'J306221034', '0212-2356826', 'CALLE CAPITOLIO, EDIF. INDELCA, PISO 2, OFIC.2 A, URB. EL MARQUES, CARACAS', '0212-2356826', 'odennys.alviarez.r@leasetech.com.ve', '75.0000', 'YGOMEZ', 'ARREND', 1, 1),
    ('FEBECA', 1, '0000000002', 'TODO POP, C.A. (TODO POP,CA)', '' ,'J311424172', '0241-8431920', 'AV.POCATERRA, EDIF. EL PRADO, PISO 2, APTO.304, URB. EL TRIGAL CENTRO, VALENCIA, EDO. CARABOBO', '', 'TODOPOP@GMAIL.COM', '75.0000', 'RGARCIA',  'PUBLIC', 1, 1),
    ('FEBECA',1, '0000000003', 'SERGENPA C.A (SERVICIOS GENERALES PAEZ)', '', 'J296064210', '0245-4511779', 'CALLE CARVAJAL, EDIF. PEDRIGAR, PISO 6, APTO. 6-D, URB.LA FLORIDA, GUACARA, EDO. CARABOBO', '',	'SERGENPA2008@GMAIL.COM', '75.0000', 'RGARCIA',	 'CONTRA', 1, 1),
    ('BEVAL', 2, '0000000004', 'INSTITUTO MUNICIPAL DEL AMBIENTE IMA', '', 'G200001992', '0241-8582558', 'PASEO CABRIALES, PARQUE HUMBOLDT, VALENCIA, EDO. CARABOBO', '0241-8582558', '', '75.0000', 'RGARCIA', 'NORET', 1, 1),
    ('BEVAL', 2, '0000000005', 'OFINESCA C.A. (OFINESCA C.A.)', 'HERLEYNS ROMERO', 'J400022053', '0241-4142414', 'AV. DON JULIO CENTENO, C.C. LOS JARALES, NIVEL P.B., LOCAL LPB-08, SECTOR SAN DIEGO, EDO. CARABOBO', '', 'ofinesca@hotmail.com', '100.0000', 'YGOMEZ', 'NORET', 1, 1); 
