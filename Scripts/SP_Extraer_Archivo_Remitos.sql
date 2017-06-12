IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_Extraer_Archivo_Remitos')
DROP PROCEDURE SP_Extraer_Archivo_Remitos
GO
CREATE PROCEDURE SP_Extraer_Archivo_Remitos
AS
IF OBJECT_ID('tempdb..#_temp_remitos') IS NOT NULL
	DROP TABLE #_temp_remitos
GO
CREATE TABLE #_temp_remitos(
    Campo1 varchar(5000)	,	
	Campo2 varchar(5000)	,
	);

BULK INSERT #_temp_remitos FROM 'C:\archivo001C.TXT'
WITH (	FIELDTERMINATOR = ',',
		ROWTERMINATOR =' \n')

insert into #_temp_remitos (Campo1)
select txt.Campo1
from #_temp_remitos txt

select * from #_temp_remitos
GO

exec SP_Extraer_Archivo_Remitos
