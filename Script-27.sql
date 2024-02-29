select * from dbconciliate.documentos d  where d.create_at like '%2023-10-27%'


CREATE OR REPLACE VIEW vista_consignaciones (id_conciliacion, documento, fecha_valor, zona, usuario, casa)
AS SELECT D.id_documento, D.codigo_documento, D.fecha_valor, D.id_zona, D.usuario_creacion ,C.name 
FROM documentos D 
inner join xrt_companies C on D.casa = C.id;


SELECT D.id_documento, D.codigo_documento, D.fecha_valor, D.id_zona, C.name 
FROM documentos D inner join xrt_companies C on D.casa = C.id;


CREATE DEFINER = `Admin` @`%` TRIGGER dbafv.ON_U_UPDATE_SEQUENCE_ID BEFORE
UPDATE
	ON
	ARTICULOS_LPV FOR EACH ROW  
BEGIN IF ((BINARY new.ID_LOTE_ARTICULO <> old.ID_LOTE_ARTICULO))
	OR ((BINARY new.IDARTICULO <> old.IDARTICULO))
	OR ((BINARY new.PRIORIDAD <> old.PRIORIDAD))
	OR ((new.ACTIVO is null
		AND old.ACTIVO is not null)
	OR (old.ACTIVO is null
		AND new.ACTIVO is not null)
	OR (BINARY new.ACTIVO <> old.ACTIVO))
	OR ((new.DISPONIBLE_VENTA is null
		AND old.DISPONIBLE_VENTA is not null)
	OR (old.DISPONIBLE_VENTA is null
		AND new.DISPONIBLE_VENTA is not null)
	OR (BINARY new.DISPONIBLE_VENTA <> old.DISPONIBLE_VENTA))
	OR ((new.PRECIO_JUSTO is null
		AND old.PRECIO_JUSTO is not null)
	OR (old.PRECIO_JUSTO is null
		AND new.PRECIO_JUSTO is not null)
	OR (BINARY new.PRECIO_JUSTO <> old.PRECIO_JUSTO))
	OR ((new.IVA_PRECIO_JUSTO is null
		AND old.IVA_PRECIO_JUSTO is not null)
	OR (old.IVA_PRECIO_JUSTO is null
		AND new.IVA_PRECIO_JUSTO is not null)
	OR (BINARY new.IVA_PRECIO_JUSTO <> old.IVA_PRECIO_JUSTO))
	OR ((new.DESCUENTO is null
		AND old.DESCUENTO is not null)
	OR (old.DESCUENTO is null
		AND new.DESCUENTO is not null)
	OR (BINARY new.DESCUENTO <> old.DESCUENTO))
	OR ((new.UNIDDESC is null
		AND old.UNIDDESC is not null)
	OR (old.UNIDDESC is null
		AND new.UNIDDESC is not null)
	OR (BINARY new.UNIDDESC <> old.UNIDDESC))
	OR ((BINARY new.EXISTENCIA <> old.EXISTENCIA))
	OR ((new.FECHA_CREACION is null
		AND old.FECHA_CREACION is not null)
	OR (old.FECHA_CREACION is null
		AND new.FECHA_CREACION is not null)
	OR (BINARY new.FECHA_CREACION <> old.FECHA_CREACION))
	OR ((new.FECHA_ACTUALIZACION is null
		AND old.FECHA_ACTUALIZACION is not null)
	OR (old.FECHA_ACTUALIZACION is null
		AND new.FECHA_ACTUALIZACION is not null)
	OR (BINARY new.FECHA_ACTUALIZACION <> old.FECHA_ACTUALIZACION))
	OR ((new.UNIDADVENTA_EXHIBICION is null
		AND old.UNIDADVENTA_EXHIBICION is not null)
	OR (old.UNIDADVENTA_EXHIBICION is null
		AND new.UNIDADVENTA_EXHIBICION is not null)
	OR (BINARY new.UNIDADVENTA_EXHIBICION <> old.UNIDADVENTA_EXHIBICION))
	OR ((new.EMPAQUE_EXHIBICION is null
		AND old.EMPAQUE_EXHIBICION is not null)
	OR (old.EMPAQUE_EXHIBICION is null
		AND new.EMPAQUE_EXHIBICION is not null)
	OR (BINARY new.EMPAQUE_EXHIBICION <> old.EMPAQUE_EXHIBICION))
	OR ((new.IDTIPOPRECIO is null
		AND old.IDTIPOPRECIO is not null)
	OR (old.IDTIPOPRECIO is null
		AND new.IDTIPOPRECIO is not null)
	OR (BINARY new.IDTIPOPRECIO <> old.IDTIPOPRECIO))
	OR ((BINARY new.ID_LISTAPRECIO <> old.ID_LISTAPRECIO))
	OR ((BINARY new.ID_VERSION_LISTAPRECIO <> old.ID_VERSION_LISTAPRECIO))
	OR ((new.PRECIOLISTA is null
		AND old.PRECIOLISTA is not null)
	OR (old.PRECIOLISTA is null
		AND new.PRECIOLISTA is not null)
	OR (BINARY new.PRECIOLISTA <> old.PRECIOLISTA))
	OR ((BINARY new.VALIDO_DESDE <> old.VALIDO_DESDE))
	OR ((BINARY new.PRECIOLISTA_D <> old.PRECIOLISTA_D)) THEN SET
	new.SDS_SEQUENCE_ID = (
	SELECT
		GenerarSecuenciaUnica());  END IF;
