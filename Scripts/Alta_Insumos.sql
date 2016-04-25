/*
SI RUBRO 5002 HERRAJES
	SUBRUBRO = 3500 HERRAJES
*/
DECLARE @UNIDADMEDIDAID int= (select id from UnidadesMedida where codigo = 'UNI')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,1,getdate(),'Admin' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 5002 and articuloscob.Subrubro = 3500
/*
	Rubro 2500 Articulos de vidriera // Por error de carga se contempla el 250
*/
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],0,@UNIDADMEDIDAID,0,proveedores.id,1,getdate(),'Admin' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 2500 or articuloscob.rubro = 250

/*
	Rubro 5000 Telas Sinteticas
	Rubro 5001 Cueros
SubRubros de estos
0579	SIMIL MARRON
0580	SIMIL CELESTE
0586	SIMIL NATURAL VIEJO
0588	PU COLORES VARIOS
2020	SIN CLASIFICAR
3200	NO EXISTE
3700	NO EXISTE
3900	TEMP.INV 2013
4000	TEMP.VER 13-14
4100	TEMP INV 14
4200	VERANO 14-15
4300	TEMP INV. 15
4400	TEMP. VER 15-16
4500	TEMP. INV 16
6001	INVIERNO SALDOS
6002	VERANO SALDOS
6200	NO EXISTE
*/
SET @UNIDADMEDIDAID = (select id from UnidadesMedida where codigo = 'MTS')
insert into insumos (codigo,Descripcion,EsMaterial,UnidadMedidaId,StockMinimo,ProveedorId,Estado,FechaAlta,UsuarioAlta)
select articuloscob.codigo,articuloscob.[Descripcion larga],1,@UNIDADMEDIDAID,0,proveedores.id,1,getdate(),'Admin' from articuloscob
inner join proveedores on
articuloscob.Proveedor = proveedores.Codigo
where articuloscob.rubro = 5000 or articuloscob.rubro = 5001
DECLARE @TEMPID int = (select id from Temporadas where codigo = 'IV2010')
select * from Colores
select Subrubro from articuloscob where rubro = 5000 or rubro = 5001
group by subrubro

select * from articuloscob where (rubro = 5000 or rubro = 5001)
and subrubro = 3200
select * from colores
