INSERT INTO TIGALAC_DEV.dbo.procesos_auditables (nombre,descripcion,createdAt,updatedAt,status) VALUES
	 (N'LOGIN                                                                                               ',N'INICIO DE SESIÓN',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERA_TXT_COMPRAS                                                                                  ',N'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE COMPRAS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERA_TXT_COMPRAS_AUT                                                                              ',N'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE COMPRAS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERA_TXT_VENTAS                                                                                   ',N'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE VENTAS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERA_TXT_VENTAS_AUT                                                                               ',N'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE VENTAS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERA_TXT_VENTAS_RETENCION_IVA                                                                     ',N'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE RETENCIONES DE IVA DE VENTAS',NULL,NULL,1),
	 (N'GENERA_TXT_VENTAS_RETENCION_IVA_AUT                                                                 ',N'PROCESO AUTOMÁTICO DE GENERACIÓN DE ARCHIVOS TXT DE RETENCIONES DE IVA DE VENTAS',NULL,NULL,1),
	 (N'DESVINCULAR_TRANSACCION                                                                             ',N'DESVINCULAR UNA TRANSACCIÓN DE UN ARCHIVO',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ANULACION_ARCHIVO                                                                                   ',N'ANULACIÓN DE ARCHIVOS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'CREACION_USUARIO                                                                                    ',N'CREACIÓN DE NUEVOS USUARIOS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ACTUALIZACION_USUARIO                                                                               ',N'ACTUALIZACIÓN DE USUARIOS POR PARTE DE UN ADMINISTRADOR',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ACTUALIZACION_PERFIL                                                                                ',N'ACTUALIZACIÓN DEL PERFÍL DE USUARIO',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ACTUALIZACION_CONTRASENA                                                                            ',N'ACTUALIZACIÓN DE CONTRASEÑA DEL PERFÍL DE USUARIO',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'CREACION_COMPANIA                                                                                   ',N'CREACIÓN DE NUEVAS COMPAÑIAS',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ACTUALIZACION_COMPANIA                                                                              ',N'ACTUALIZACIÓN DE COMPAÑIAS POR PARTE DE UN ADMINISTRADOR',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'CONFIGURACION_APP                                                                                   ',N'CONFIGURACIÓN GENERAL DE LA APLICACIÓN',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'ACTUALIZACION_PRIVILEGIOS_USUARIOS                                                                  ',N'ACTUALIZACIÓN DE PRIVILEGIOS DE USUARIOS POR PARTE DE UN ADMINISTRADOR',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'CREACION_PRIVILEGIOS_USUARIO                                                                        ',N'CREACIÓN DE PRIVILEGIOS DE USUARIOS POR PARTE DE UN ADMINISTRADOR',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'CREAR_ARCHIVO                                                                                       ',N'CREACION DE ARCHIVO TXT',N'1900-01-01 00:00:00 +00:00',N'1900-01-01 00:00:00 +00:00',1),
	 (N'GENERAR_TXT_PROVEEDORES                                                                 ',N'PROCESO POR DEMANDA DE GENERACIÓN DE ARCHIVOS TXT DE RETENCIONES DE IVA DE VENTAS',NULL,NULL,1);
