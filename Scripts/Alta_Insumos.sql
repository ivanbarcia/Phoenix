/*
	RUBRO 5002 HERRAJES
		SUBRUBRO = 3500 HERRAJES
*/
DECLARE @TempId int= (select id from temporadas where codigo = 'SD')
DECLARE @UNIDADMEDIDAID int= (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.rubro = 5002 and articuloscob.Subrubro = 3500

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.rubro = 5002 and artcob.Subrubro = 3500

/*
	RUBRO 5002 HERRAJES
		SUBRUBRO = 500 CINTURONES DAMA
*/

SET @UNIDADMEDIDAID  = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init'
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.rubro = 5002 and articuloscob.Subrubro = 500
                               

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.rubro = 5002 and artcob.Subrubro = 500

/*
	Rubro 2500 Articulos de vidriera // Por error de carga se contempla el 250
*/

set @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.rubro = 2500 /*or articuloscob.rubro = 250 */


update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.rubro = 2500
/*
	Rubro 5000 Telas Sinteticas
	Rubro 5001 Cueros
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'MTS')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],1,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.rubro = 5000 or articuloscob.rubro = 5001

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.rubro = 5000 or artcob.rubro = 5001

/*ELIMINO REPETIDOS*/
DELETE I1
FROM INSUMOS I1, INSUMOS I2
WHERE I1.Descripcion = I2.Descripcion
AND I1.id < I2.id;


/*
	Rubro 3030 Perfumes
*/

SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.rubro = 3030

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.rubro = 3030

/*
	Ac� se procesan los insumos restantes que no entraban en las categorias anteriores
*/

SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where articuloscob.Procesado = 0
and ArticulosCob.ArtProv between 'Z' and 'ZZZ'

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.Procesado = 0
and artcob.ArtProv between 'Z' and 'ZZZ'

/*
	Ac� se procesan los insumos bolsas
*/

SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,articuloscob.Precio,@TempId,1,getdate(),'SQL Init' 
from articuloscob
inner join proveedoresCOB on
(
	articuloscob.Proveedor = proveedoresCOB.CodDepo1
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo2
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo3
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo4
OR	articuloscob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where ArticulosCob.ArtProv between 'W' and 'X'

update artcob
set artcob.procesado = 1
from articuloscob as artcob
inner join proveedoresCOB on
(
	artcob.Proveedor = proveedoresCOB.CodDepo1
OR	artcob.Proveedor = proveedoresCOB.CodDepo2
OR	artcob.Proveedor = proveedoresCOB.CodDepo3
OR	artcob.Proveedor = proveedoresCOB.CodDepo4
OR	artcob.Proveedor = proveedoresCOB.CodDepo5
)
inner join proveedores on
proveedorescob.codigo = proveedores.codigo
where artcob.ArtProv between 'W' and 'X'

/*
	Ac� se da de alta el insumo sin definir
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Precio,TemporadaId,Estado,FechaAlta,UsuarioAlta)
select 'SD','SIN DEFINIR',1,@UNIDADMEDIDAID,0,proveedores.id,0,@TempId,1,getdate(),'SQL Init' from proveedores
where proveedores.Codigo = 'SD'
GO
/*
	Ac� cambiamos colores en las descripciones para que encuentre los colores
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

