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
                        RD.MONTOBONIFICACION,
                        "BASE_PP",
                        RD.BASE_PP,
                        "PORCENTAJE_PP",
                        RD.PORCENTAJE_PP,
                        "ACUMULADO_PP",
                        RD.ACUMULADO_PP
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
        AND R.USUARIOCREACION = 'v0112'
        AND R.IDZONA = 141
        AND R.IDRECIBO = 60280
#        AND CU.IDCUENTABANCARIA = ?
    GROUP BY R.IDRECIBO,
        R.IDZONA,
        R.USUARIOCREACION;
       

       
SELECT MVC.NROMOVFISCAL as DEBITO,
 CASE WHEN RD.IDDOCUMENTO = 10 THEN
 CONCAT('RET', SUBSTRING(LP.USERNAME, 2), SUBSTRING(Z.NOMBREZONA, 2), DATE_FORMAT(RD.FECHACREACION, '%y%m%d'), RD.IDRETENCION)
 ELSE
 CONCAT('RNC', SUBSTRING(LP.USERNAME, 2), SUBSTRING(Z.NOMBREZONA, 2), DATE_FORMAT(RD.FECHACREACION, '%y%m%d'), RD.IDRETENCION) 
 END AS CREDITO, 
 RD.MONTO as MONTO_DOLAR, 
 RD.MONTO_D as MONTO_LOCAL , 
 CASE WHEN DC.TIPO <>'O/C' THEN DC.TIPO END AS TIPO_DEBITO, 
 'O/C' AS TIPO_CREDITO, 
 CASE WHEN DC.SUBTIPO<>'RETIVA' THEN DC.SUBTIPO END AS SUBTIPO_DEBITO, 
 'RETIVA' AS SUBTIPO_CREDITO,
 RD.MONTO_BONIFICACION AS MONTO_BONIFICACION
 FROM retenciondetalle RD 
 INNER JOIN movcomercial MVC ON RD.IDMOVCOMERCIALREF = MVC.IDMOVCOMERCIAL 
 INNER JOIN documentocomercial DC ON MVC.IDDOCUMENTO= DC.IDDOCUMENTO 
 INNER JOIN LoginColaborador LP ON LP.USERNAME= RD.USUARIOCREACION 
 INNER JOIN zonas Z ON Z.IDZONAS= RD.IDZONA 
 where RD.IDRETENCION=${IDRETENCION} 
 AND RD.IDZONA=${IDZONA}
 AND RD.USUARIOCREACION="${USUARIOCREACION}"
 AND RD.IDDOCUMENTO = ${IDDOCUMENTO};
 
	case when DC.TIPO <> 'O/C' then DC.TIPO end as TIPO_DEBITO,
	'O/C' as TIPO_CREDITO,
	case when DC.SUBTIPO <> 'RETIVA' then DC.SUBTIPO end as SUBTIPO_DEBITO,
	'RETIVA' as SUBTIPO_CREDITO
from
	retenciondetalle RD
inner join movcomercial MVC on
	RD.IDMOVCOMERCIALREF = MVC.IDMOVCOMERCIAL
inner join documentocomercial DC on
	MVC.IDDOCUMENTO = DC.IDDOCUMENTO
inner join LoginColaborador LP on
	LP.USERNAME = RD.USUARIOCREACION
inner join zonas Z on
	Z.IDZONAS = RD.IDZONA
where
	RD.IDRETENCION = 60022
	and RD.IDZONA = 318
	and RD.USUARIOCREACION = 'v0186'
     
	
 select
	MVC.NROMOVFISCAL as DEBITO,
	CONCAT('RET', SUBSTRING(LP.USERNAME, 2), SUBSTRING(Z.NOMBREZONA, 2), DATE_FORMAT(RD.FECHACREACION, '%y%m%d'), RD.IDRETENCION) as CREDITO,
	RD.MONTO as MONTO_DOLAR,
	RD.MONTO_D as MONTO_LOCAL ,
	case
		when DC.TIPO <> 'O/C' then DC.TIPO
	end as TIPO_DEBITO,
	'O/C' as TIPO_CREDITO,
	case
		when DC.SUBTIPO <> 'RETIVA' then DC.SUBTIPO
	end as SUBTIPO_DEBITO,
	'RETIVA' as SUBTIPO_CREDITO
from
	retenciondetalle RD
inner join movcomercial MVC on
	RD.IDMOVCOMERCIALREF = MVC.IDMOVCOMERCIAL
inner join documentocomercial DC on
	MVC.IDDOCUMENTO = DC.IDDOCUMENTO
inner join LoginColaborador LP on
	LP.USERNAME = RD.USUARIOCREACION
inner join zonas Z on
	Z.IDZONAS = RD.IDZONA
where
	RD.IDRETENCION = ${IDRETENCION}
	and RD.IDZONA = ${IDZONA}
	and RD.USUARIOCREACION = ${USUARIOCREACION};
and RD.IDDOCUMENTO = 10




 SELECT MVC.NROMOVFISCAL as DEBITO,
 CONCAT('RET', SUBSTRING(LP.USERNAME, 2), SUBSTRING(Z.NOMBREZONA, 2), DATE_FORMAT(RD.FECHACREACION, '%y%m%d'), RD.IDRETENCION) as CREDITO, 
 RD.MONTO as MONTO_DOLAR, 
 RD.MONTO_D as MONTO_LOCAL , 
 CASE WHEN DC.TIPO <>'O/C' THEN DC.TIPO END AS TIPO_DEBITO, 
 'O/C' AS TIPO_CREDITO, 
 CASE WHEN DC.SUBTIPO<>'RETIVA' THEN DC.SUBTIPO END AS SUBTIPO_DEBITO, 
 'RETIVA' AS SUBTIPO_CREDITO,
 RD.MONTO_BONIFICACION AS MONTO_BONIFICACION
 FROM retenciondetalle RD 
 INNER JOIN movcomercial MVC ON RD.IDMOVCOMERCIALREF = MVC.IDMOVCOMERCIAL 
 INNER JOIN documentocomercial DC ON MVC.IDDOCUMENTO= DC.IDDOCUMENTO 
 INNER JOIN LoginColaborador LP ON LP.USERNAME= RD.USUARIOCREACION 
 INNER JOIN zonas Z ON Z.IDZONAS= RD.IDZONA
 where RD.IDRETENCION=60022
 AND RD.IDZONA=318
 AND RD.USUARIOCREACION='v0186'
 
 
 select 
 	*
 from 
 	retenciondetalle r 
 where MONTO_BONIFICACION
 
 
 


 