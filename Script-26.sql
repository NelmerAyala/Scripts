SELECT distinct
	ART.CODVIEJO, art.IDARTICULO ,	art.DESCRIPCION
	#M.DESCRIPCION descripcionmarca, GC.NOMBRE GRUPOCLIENTE, 
	#artlpv.EXISTENCIA, m.ABREVIADO MARCA, 
	#art.ACTIVO, art.FECHACREACION , 
	#art.FECHACREACIONR , art.FECHAACTUALIZACION ,
	#artlpv.PRECIOLISTA
FROM 
	dbafv.articulos art
	#inner join dbafv.articulos_lpv artlpv on art.IDARTICULO = artlpv.IDARTICULO 
	inner join dbafv.marcas m on art.IDMARCA = m.IDMARCA 
	inner join dbafv.marcacatalogo mc on art.IDMARCACATALOGO = mc.IDMARCA  
	#inner join dbafv.grupo_cliente gc on artlpv.ID_LISTAPRECIO = gc.ID_LISTAPRECIO 
	inner  join dbafv.referencia r on art.IDARTICULO = r.IDARTICULO 
	left join dbafv.categoriaarticulocatalogo cac on cac.ARTICULOID = art.IDARTICULO 
where 
	art.CODVIEJO in (
0401028,
0404075,
0404076,
0404077,
0404078,
0404079,
0404080,
0625030,
0625031,
0625032,
0625033,
0722180,
0728001,
0916177,
0925030,
1625020,
1625021,
1710167,
2007012,
4401025,
4401026,
4401027,
4401028,
4401029,
4401030,
4401031,
4401032,
4401033,
4401034
	)
	
	
SELECT 
	ART.CODVIEJO, art.*
FROM 
	dbafv.articulos art
where 
	art.CODVIEJO in (
0401028,
0404075,
0404076,
0404077,
0404078,
0404079,
0404080,
0625030,
0625031,
0625032,
0625033,
0722180,
0728001,
0916177,
0925030,
1625020,
1625021,
1710167,
2007012,
4401025,
4401026,
4401027,
4401028,
4401029,
4401030,
4401031,
4401032,
4401033,
4401034
	)