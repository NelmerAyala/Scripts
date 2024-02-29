select
	*
from
	DBAFV.ORDEN_LOTE O
where
	O.NUMORDEN = 60086
	and O.IDCLIENTE = (
	select
		IDCLIENTE
	from
		DBAFV.CLIENTE
	where
		CODNEMONICO = '2579075');
	
	
SELECT
	art.NOMBRE, art.descripcion, art_lpv.preciolista  
FROM
	DBAFV.ARTICULOS ART inner join 
	DBAFV.ARTICULOS_LPV ART_LPV on ART.IDARTICULO = art_lpv.IDARTICULO
WHERE
	ART.NOMBRE LIKE '%BARRA ESTRIADA%'
	
	
	SELECT
	art.NOMBRE, art.descripcion, art_lpv.preciolista  
FROM
	DBAFV.ARTICULOS ART inner join 
	DBAFV.ARTICULOS_LPV ART_LPV on ART.IDARTICULO = art_lpv.IDARTICULO
WHERE
	ART.NOMBRE LIKE '%alambre%'
	
order by ART.descripcion
	
SELECT * FROM DBAFV.CLIENTE C WHERE C.CODNEMONICO='2116002';

2116002


SELECT R.IDRECIBO,
        R.IDZONA,
        R.IDINSTRUMENTOPAGO,
        CONCAT(
        'R',
        SUBSTRING(R.USUARIOCREACION, 2),
        SUBSTRING(Z.NOMBREZONA, 2),
        DATE_FORMAT(R.FECHACREACION, '%y%m%d'),
        R.IDRECIBO
    ) AS DOCUMENTO
    FROM recibopago R
    INNER JOIN ZONAS Z ON R.IDZONA = Z.IDZONAS
    WHERE R.IDCONSECUTIVO = 0
        AND R.USUARIOCREACION = 'v0027'
        AND R.IDZONA = 115
        AND R.IDRECIBO = 60167;
        
       
       
       
SELECT
        C.IDCLIENTE AS CLIENTE,
        CONCAT(
            'R',
            SUBSTRING(R.USUARIOCREACION, 2),
            SUBSTRING(Z.NOMBREZONA, 2),
            DATE_FORMAT(R.FECHACREACION, '%y%m%d'),
            R.IDRECIBO
        ) AS DOCUMENTO,
        CU.IDENTIDADFINANCIERA AS ENTIDAD_FINANCIERA,
        CONCAT(
            DATE_FORMAT(R.FECHACREACION, '%Y-%m-%dT%T'),
            '.000'
        ) AS U_Fecha_Recibo,
        CU.IDTIPOCUENTABANCARIA AS MONEDA,
        CASE
            WHEN RP.IDMONEDA = 205 THEN TRUNCATE(RP.MONTO_OTRAS, 2)
            WHEN RP.IDMONEDA = 100 THEN TRUNCATE(RP.MONTO, 2)
        END AS MONTO,
        TRUNCATE(RP.MONTO, 2) AS MONTO_DOLAR,
        TRUNCATE(RP.MONTO_OTRAS, 2) AS MONTO_LOCAL,
        R.OBSERVACIONES AS NOTAS,
        IP.SUBTIPO AS SUBTIPO,
        IP.TIPO AS TIPO,
        CB.IDCOLABORADORES AS VENDEDOR,
        CASE
            WHEN IP.IDINSTRUMENTOPAGO = 21 THEN NULL
            ELSE RP.NUMERODOCUMENTO1
        END AS UDF_PAGO,
        CONCAT(RP.FECHADOCUMENTO, 'T00:00:00.000') AS FECHA_DOCUMENTO,
        CAST(
            CONCAT(
                '[',
                GROUP_CONCAT(
                    DISTINCT JSON_OBJECT(
                        "DEBITO",
                        CASE
                            WHEN MV.USUARIOUA = 'MASIVO_SALDO' THEN CONCAT('A', MV.NROMOVFISCAL)
                            ELSE MV.NROMOVFISCAL
                        END,
                        "CREDITO",
                        CONCAT(
                            'R',
                            SUBSTRING(R.USUARIOCREACION, 2),
                            SUBSTRING(Z.NOMBREZONA, 2),
                            DATE_FORMAT (R.FECHACREACION, '%y%m%d'),
                            RD.IDRECIBO
                        ),
                        "MONTO_DOLAR",
                        RD.MONTOCOBRADO,
                        "MONTO_LOCAL",
                        CASE
                            WHEN RP.IDMONEDA = 100 THEN RD.MONTOCOBRADO_D_ORIG
                            ELSE RD.MONTOCOBRADO_D
                        END,
                        "TIPO_DEBITO",
                        D.TIPO,
                        "TIPO_CREDITO",
                        IP.TIPO,
                        "SUBTIPO_DEBITO",
                        D.SUBTIPO,
                        "SUBTIPO_CREDITO",
                        IP.SUBTIPO,
                        "MONTO_BONIFICACION",
                        RD.MONTOBONIFICACION
                    )
                ),
                ']'
            ) AS JSON
        ) AS reciboDetalle
    FROM recibo R
        INNER JOIN recibopago RP ON (
            R.IDRECIBO = RP.IDRECIBO
            AND R.IDZONA = RP.IDZONA
            AND R.USUARIOCREACION = RP.USUARIOCREACION
        )
        INNER JOIN recibodetalle RD ON (
            RD.IDRECIBO = RP.IDRECIBO
            AND RD.IDZONA = RP.IDZONA
            AND RD.USUARIOCREACION = RP.USUARIOCREACION
        )
        INNER JOIN movcomercial MV ON RD.IDMOVCOMERCIAL = MV.IDMOVCOMERCIAL
        INNER JOIN documentocomercial D ON MV.IDDOCUMENTO = D.IDDOCUMENTO
        INNER JOIN monedas M ON RP.IDMONEDA = M.IDMONEDA
        INNER JOIN cliente C ON R.IDRECEPTORRECIBO = C.IDCLIENTE
        INNER JOIN zonas Z ON R.IDZONA = Z.IDZONAS
        LEFT JOIN colaboradores CB ON R.IDCOLABORADOR = CB.IDCOLABORADORES
        INNER JOIN instrumentopago IP ON RP.IDINSTRUMENTOPAGO = IP.IDINSTRUMENTOPAGO
        INNER JOIN cuentabancariainterna CU
    WHERE RP.IDCONSECUTIVO = 0
        AND R.USUARIOCREACION = 'v0027'
        AND R.IDZONA = 115
        AND R.IDRECIBO = 60167
#        AND CU.IDCUENTABANCARIA = ?
    GROUP BY R.IDRECIBO,
        R.IDZONA,
        R.USUARIOCREACION;
        
        AND R.USUARIOCREACION = 
        AND R.IDZONA = 
        AND R.IDRECIBO = ;