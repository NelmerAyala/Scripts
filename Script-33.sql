
-- Pruebas de MS cliente
-- -------------------------------------------------------------

SELECT distinct count(IDRUTAS), IDRUTAS, IDZONAS from dbafv.rutasDETALLE r
group by IDRUTAS, IDZONAS;

-- -------------------------------------------------------------
SELECT * from dbafv.rutasDETALLE r where IDRUTAS =17	and IDZONAS= 6 and IDCLIENTE =605;

select R.*, C.IDCLIENTE from dbafv.rutasDETALLE R left join cliente c on R.IDCLIENTE = C.IDCLIENTE 
where R.IDRUTAS=17 and IDZONAS= 162;

INSERT INTO dbafv.rutasdetalle
(IDRUTAS, IDZONAS, IDCLIENTE, COMENTARIO, IDSTATUS, SDS_SEQUENCE_ID)
VALUES(17, 6, 605, '', 2, 212515);



-- ----------------------------------------------
SELECT * from dbafv.rutasDETALLE r where IDRUTAS =17 and IDZONAS= 162;

INSERT INTO dbafv.rutasdetalle
(IDRUTAS, IDZONAS, IDCLIENTE, COMENTARIO, IDSTATUS, SDS_SEQUENCE_ID)
VALUES(17, 162, 13784, '', 2, 209802);


SELECT * from dbafv.rutas r where IDRUTAS =17 and IDZONAS= 162;

INSERT INTO dbafv.rutas
(IDRUTAS, IDZONAS, NOMBRERUTA, DESCRIPCIONRUTA, COMENTARIOS, IDSTATUS, SDS_SEQUENCE_ID)
VALUES(17, 162, 'ANZOATEGUI 1', 'ANZOATEGUI 1', '', 2, 12708);



select R.*, C.IDCLIENTE from dbafv.rutasDETALLE R left join cliente c on R.IDCLIENTE = C.IDCLIENTE 
where R.IDRUTAS=17 and IDZONAS= 162; 



IDRUTA 	IDZONAS 	IDCLIENTE
10 		20			2023

update 
11		20 			2023

1. PASO ES CONSULTa 
10 		20			2023

update 
11 		20 			2023


10		21		 	

select COUNT(IDCLIENTE), IDCLIENTE ,IDRUTAS ,IDZONAS  from rutasdetalle r
group by IDCLIENTE;
