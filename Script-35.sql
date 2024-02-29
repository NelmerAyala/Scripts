SELECT 
	* ,SUBSTRING( FormTableName , LEN(FormTableName) -  CHARINDEX('_',REVERSE(FormTableName)) + 2  , LEN(FormTableName)) AS 'VERSION'
FROM 
	StageMayoreo.dbo.FormsTables_TB ftt 
WHERE 
	(ftt.FormName ='Entrega' and ftt.FormId=27058 )
	and ftt.Id = (
		SELECT MAX(ID) 
		FROM StageMayoreo.dbo.FormsTables_TB ftt 
		WHERE (ftt.FormName ='Entrega' and ftt.FormId=27058 ) 
		AND ISNUMERIC(SUBSTRING( FormTableName , LEN(FormTableName) -  CHARINDEX('_',REVERSE(FormTableName)) + 2  , LEN(FormTableName)  )) =1	
	)