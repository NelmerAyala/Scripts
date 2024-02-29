SELECT  
	cl.CASH_LEDGER_ID ,
	cl.MOVEMENT_ID ,
	ACC_CODE,
	CASH_LEDGER_ID,
	DESCRIPTION ,
	REFERENCE_NB ,
	cl.*
from Sage_Cobranzas_PRD.dbo.CASH_LEDGER cl where REFERENCE_NB like '%ze4%';


SELECT  
	cl.CASH_LEDGER_ID ,
	cl.MOVEMENT_ID ,
	ACC_CODE,
	CASH_LEDGER_ID,
	DESCRIPTION ,
	REFERENCE_NB ,
	cl.*
from Sage_Cobranzas_PRD.dbo.CASH_LEDGER cl where ADD_INFO_1 in('60330', '60331') and add_info_8='v0091' and CMP_CODE =00003;


SELECT  
	cl.CASH_LEDGER_ID ,
	cl.MOVEMENT_ID ,
	ACC_CODE,
	CASH_LEDGER_ID,
	DESCRIPTION ,
	REFERENCE_NB ,
	cl.*
from Sage_Cobranzas_PRD.dbo.CASH_LEDGER cl where ADD_INFO_1 in('60009') and add_info_8='v0087' and CMP_CODE =00002;

SELECT  
	cl.CASH_LEDGER_ID ,
	cl.MOVEMENT_ID ,
	ACC_CODE,
	CASH_LEDGER_ID,
	DESCRIPTION ,
	REFERENCE_NB ,
	cl.*
from Sage_Cobranzas_PRD.dbo.CASH_LEDGER cl where ADD_INFO_5=200281;

	137	
	36	

SELECT 
	cl.CASH_LEDGER_ID ,
	cl.MOVEMENT_ID ,
	ACC_CODE,
	CASH_LEDGER_ID,
	DESCRIPTION ,
	REFERENCE_NB
FROM Sage_Cobranzas_PRD.dbo.CASH_LEDGER cl where ISNUMERIC(REFERENCE_NB) =0;

SELECT ISNUMERIC('A3845206') 0
SELECT ISNUMERIC('3845206') 1




SELECT T3.id_documento AS id_documento 
        FROM (
                SELECT CAST(T2.id_documento AS BIGINT) AS id_documento 
                FROM (
                        SELECT  RTRIM( LTRIM( T1.id_documento) ) AS id_documento 
                        FROM ((
                            SELECT IIF(ZU_09 IS NULL, ADD_INFO_5,ZU_09 ) AS id_documento
                             FROM cash_ledger
                             WHERE FLOW_CODE = 'I010'
                        ) 
                        UNION ALL (
                            SELECT IIF(ZU_09 IS NULL, ADD_INFO_5,ZU_09 ) AS id_documento
                            FROM audit_cash_ledger_info
                            WHERE FLOW_CODE = 'I010' AND AUDIT_EVENT_CODE = 'CA_DELETE'
                        )) AS T1 
                        WHERE T1.id_documento IS NOT NULL
                ) AS T2 
                WHERE T2.id_documento <> ''
        ) AS T3 
        WHERE T3.id_documento IN (
183958,
187717
        ) 
        GROUP BY T3.id_documento;
       
SELECT T3.id_documento AS id_documento 
        FROM (
                SELECT CAST(T2.id_documento AS BIGINT) AS id_documento 
                FROM (
                        SELECT  RTRIM( LTRIM( T1.id_documento) ) AS id_documento 
                        FROM ((
                            SELECT IIF(ZU_09 IS NULL, ADD_INFO_5,ZU_09 ) AS id_documento
                             FROM cash_ledger
                             WHERE FLOW_CODE = 'I010'
                        ) 
                        UNION ALL (
                            SELECT IIF(ZU_09 IS NULL, ADD_INFO_5,ZU_09 ) AS id_documento
                            FROM audit_cash_ledger_info
                            WHERE FLOW_CODE = 'I010' AND AUDIT_EVENT_CODE = 'CA_DELETE'
                        )) AS T1 
                        WHERE T1.id_documento IS NOT NULL
                ) AS T2 
                WHERE T2.id_documento <> ''
        ) AS T3 
        WHERE T3.id_documento IN (       
184555)
        GROUP BY T3.id_documento;

       select * from CASH_LEDGER cl where ADD_INFO_5 in (184319,184338)
       
       SELECT * FROM ACCOUNTS a WHERE ACC_CODE ='VCCBUS2983';
      
      SELECT * FROM ACCOUNTS a WHERE ACC_CODE ='VCCBUS2940';
      
      
     select * from CASH_LEDGER cl where CASH_LEDGER_ID in (727709,852094)

     
     SELECT *  FROM  (
			SELECT 
				FORMAT(VALUE_DATE, 'yy-MM-dd HH:mm:ss') AS fecha_valor,
			  	CAST( RTRIM( LTRIM(IIF(ZU_09 IS NULL, ADD_INFO_5,ZU_09 ) ) ) AS BIGINT) AS id_documento, 
				NATURE AS STATUS,
				CASH_LEDGER_ID AS cash_ledger_id,
				RTRIM( LTRIM(ACC_CODE)) AS codigo_cuenta_xrt,
				REFERENCE_NB AS referencia,
				CONCAT( FORMAT(UPDATE_DATE, 'yy-MM-dd'),' ',FORMAT(UPDATE_TIME, 'HH:mm:ss')) AS fecha_conciliacion,
				TRN_AMOUNT AS monto,
				TRN_CUR_CODE AS moneda_transaccion,
				FORMAT(BOOK_DATE, 'yy-MM-dd HH:mm:ss') AS fecha_transaccion
			FROM cash_ledger 
			WHERE 
			  	FLOW_CODE = 'I010' AND NATURE IN (11,12)
		) AS T1 WHERE id_documento IN (123456);
	
	SELECT *
	FROM cash_ledger
	WHERE  CMP_CODE ='00001' and CASH_LEDGER.NATURE ='10';


SELECT * FROM DBO.CASH_LEDGER C WHERE C.CASH_LEDGER_ID IN (863325,863326);
SELECT CASH_LEDGER_ID, MOVEMENT_ID,ACC_CODE, FLOW_CODE ,DESCRIPTION, NATURE  FROM DBO.CASH_LEDGER C WHERE C.CASH_LEDGER_ID IN (863326);

SELECT * FROM DBO.AUDIT_CASH_LEDGER_INFO C WHERE C.MOVEMENT_ID  IN (12360143);

	SELECT *
	FROM AUDIT_CASH_LEDGER_INFO acli 
	WHERE  

	CMP_CODE ='00001' and CASH_LEDGER.NATURE ='10';

	SELECT *
	FROM cash_ledger
	WHERE  CMP_CODE ='00001' and CASH_LEDGER.NATURE ='11';

	SELECT *
	FROM cash_ledger
	where CASH_LEDGER_ID =859232;

	SELECT *
	FROM cash_ledger
	where REFERENCE_NB='2815051';

	SELECT *
	FROM ban
	where REFERENCE_NB='2815051';

	7337003;
	SELECT *
	FROM 

	SELECT *
	FROM cash_ledger
	where REFERENCE_NB='2815051';
12232769


	select DISTINCT FLOW_CODE  from cash_ledger
	
	select DISTINCT cmp_code from cash_ledger
	
	select  count(cmp_code),cmp_code from cash_ledger group by cmp_code;
	
	
	


	WHERE  CMP_CODE ='00001' and CASH_LEDGER.NATURE ='12';

	SELECT DISTINCT NATURE 
	FROM cash_ledger; 

select * from COMPANIES c ;

	
	WHERE CMP_CODE
