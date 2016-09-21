/*
	RUBRO 5002 HERRAJES
		SUBRUBRO = 3500 HERRAJES
*/
DECLARE @TempId int= (select id from temporadas where codigo = 'SD')
DECLARE @UNIDADMEDIDAID int= (select id from UnidadesMedida where codigo = 'UNI')
select * from articuloscob where rubro = 5002 and subrubro = 3500
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 5002 and articuloscob.Subrubro = 3500
                     
update articuloscob
set procesado = 1
where rubro = 5002 and Subrubro = 3500
/*
	RUBRO 5002 HERRAJES
		SUBRUBRO = 500 CINTURONES DAMA
*/
SET @UNIDADMEDIDAID  = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 5002 and articuloscob.Subrubro = 500
                               
update articuloscob
set procesado = 1
where rubro = 5002 and Subrubro = 500

/*
	Rubro 2500 Articulos de vidriera // Por error de carga se contempla el 250
*/
set @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 2500 /*or articuloscob.rubro = 250 */

update articuloscob
set procesado = 1
where rubro = 2500
/*
	Rubro 5000 Telas Sinteticas
	Rubro 5001 Cueros
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'MTS')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],1,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 5000 or articuloscob.rubro = 5001

update articuloscob
set procesado = 1
where rubro = 5000 or rubro = 5001

/*
	Rubro 3030 Perfumes
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 3030

update articuloscob
set procesado = 1
where rubro = 3030

/*
	Acá se procesan los insumos restantes que no entraban en las categorias anteriores
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.Procesado = 0
and ArticulosCob.ArtProv between 'Z' and 'ZZZ'

update articuloscob
set procesado = 1
where articuloscob.Procesado = 0
and ArticulosCob.ArtProv between 'Z' and 'ZZZ'

/*
	Acá se procesan los insumos bolsas
*/

SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where ArticulosCob.ArtProv between 'W' and 'X'

update articuloscob
set procesado = 1
where ArticulosCob.ArtProv between 'W' and 'X'

/*
	Acá se da de alta el insumo sin definir
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select 'SD','SIN DEFINIR',1,@UNIDADMEDIDAID,0,proveedores.id,0,@TempId,1,getdate(),'SQL Init' from proveedores
where proveedores.Codigo = 'SD'
GO
/*
	Acá cambiamos colores en las descripciones para que encuentre los colores
*/
update insumos
set descripcion = replace(descripcion,'ROJA','ROJO') from insumos
GO
update insumos
set descripcion = replace(descripcion,'NEGRA','NEGRO') from insumos
GO
update insumos
set descripcion = replace(descripcion,'BLUE LIGHT','LIGHT BLUE') from insumos
GO
update insumos
set descripcion = replace(descripcion,'BLANCA','BLANCO') from insumos
GO
update insumos
set descripcion = replace(descripcion,'AMARILLA','AMARILLO') from insumos
GO
/*
	Ahora aplicamos busqueda de colores para los insumos
*/
DECLARE @id_color int = null
DECLARE @descripcion varchar(250) = ''

DECLARE insumos_colores_cursor CURSOR FOR  
SELECT id,descripcion
FROM colores  
WHERE PadreId is not null

OPEN insumos_colores_cursor;  
FETCH NEXT FROM insumos_colores_cursor into @id_color,@descripcion;  
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		if (select count(*) from insumos where esmaterial = 1 and colorid is null)> 0
			BEGIN
				if (select count(*) from insumos where esmaterial = 1 and colorid is null and descripcion like '%' + @descripcion + '%')> 0
					BEGIN
						UPDATE insumos 
						SET colorId = @id_color
						where 
								esmaterial = 1 
						and		colorid is null 
						and		descripcion like '%' + @descripcion + '%'
					END
			END
		FETCH NEXT FROM insumos_colores_cursor into @id_color,@descripcion;  
	END;  
CLOSE insumos_colores_cursor;  
DEALLOCATE insumos_colores_cursor;  
GO  

/*
Le quitamos el color en la desripción a los insumos que vinieron del sistema.
*/
DECLARE @id int = null
DECLARE @ColorId int = null
DECLARE @Descripcion varchar(250) = ''
DECLARE @ColorDescrip varchar(250) =''

DECLARE insumos_colores_descripcion_cursor CURSOR FOR  
SELECT id,ColorId,Descripcion
FROM insumos
WHERE
	EsMaterial = 1
and	ColorId is not null

OPEN insumos_colores_descripcion_cursor;  
FETCH NEXT FROM insumos_colores_descripcion_cursor into @Id,@ColorId,@Descripcion
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		SET @ColorDescrip = (select descripcion from colores where id = @ColorId)
		if (@ColorDescrip <> '')
			BEGIN
				SET @Descripcion = (SELECT REPLACE(@Descripcion,@ColorDescrip,''))
				
				UPDATE insumos
				set Descripcion = @Descripcion
				where id = @id
			END
		FETCH NEXT FROM insumos_colores_descripcion_cursor into @Id,@ColorId,@Descripcion
	END;  
CLOSE insumos_colores_descripcion_cursor;  
DEALLOCATE insumos_colores_descripcion_cursor;  
GO  