DECLARE @categoriaTalle int = (select id from CategoriaTalles where codigo ='TZ')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='35'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='36'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='37'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='38'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='39'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='40'),1,GETDATE(),'Admin')
SET @categoriaTalle  = (select id from CategoriaTalles where codigo ='CP')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='1'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='2'),1,GETDATE(),'Admin')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='3'),1,GETDATE(),'Admin')
SET @categoriaTalle  = (select id from CategoriaTalles where codigo ='U')
insert into CategoriaAtributo (CategoriaTalleId,TalleId,Estado,FechaAlta,UsuarioAlta)
values (@categoriaTalle,(select id from Talles where codigo='0'),1,GETDATE(),'Admin')