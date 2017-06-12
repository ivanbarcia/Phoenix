drop table #TEXTFILE_2
go
CREATE TABLE #TEXTFILE_2(
    Campo1 varchar(500) ,
    Campo2 varchar(500) ,
    Campo3 varchar(500) ,
	Campo4 varchar(500) ,
    Campo5 varchar(500) ,
	Campo6 varchar(500) ,
	Campo7 varchar(500) ,
	Campo8 varchar(500) ,
	Campo9 varchar(500)	,
	Campo10 varchar(500),
	Campo11 varchar(500)
	);

BULK INSERT #TEXTFILE_2 FROM 'C:\archivo000.TXT'
WITH (FIELDTERMINATOR =' \t',ROWTERMINATOR =' \n')

insert into #TEXTFILE_2 (Campo1,Campo2,Campo3,Campo4,Campo5,Campo6,Campo7,Campo8,Campo9,Campo10,Campo11)
select txt.Campo1,txt.Campo2,txt.Campo3,txt.Campo4,txt.Campo5,txt.Campo6,txt.Campo7,txt.Campo8,txt.Campo9,txt.Campo10,txt.Campo11
from #TEXTFILE_2 txt
GO
select  * from #TEXTFILE_2
