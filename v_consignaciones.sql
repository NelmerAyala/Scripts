CREATE OR REPLACE VIEW vista_consignaciones (id_conciliacion, documento, fecha_valor, zona, usuario, casa)
AS SELECT D.id_documento, D.codigo_documento, D.fecha_valor, D.id_zona, D.usuario_creacion ,C.name 
FROM documentos D 
inner join xrt_companies C on D.casa = C.id;