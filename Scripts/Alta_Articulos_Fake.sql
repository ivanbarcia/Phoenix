declare @proveedor int = (select id  from proveedores where codigo = '0001')
declare @cattalleid int  = (select id from CategoriaTalles where codigo = 'TZ')
insert into articulos (codigo,Descripcion,CategoriaTalleId,estado,FechaAlta,UsuarioAlta,ProveedorId,RequiereAutorizacion,Liquidacion)
select codigo,[Descripcion larga],@cattalleid,1,getdate(),'Admin',@proveedor,0,0
from ArticulosCob
where Proveedor =  '0001'   

set @proveedor = (select id  from proveedores where codigo = '0005')

insert into articulos (codigo,Descripcion,CategoriaTalleId,estado,FechaAlta,UsuarioAlta,ProveedorId,RequiereAutorizacion,Liquidacion)
select codigo,[Descripcion larga],@cattalleid,1,getdate(),'Admin',@proveedor,0,0
from ArticulosCob
where Proveedor =  '0005'  


set @proveedor = (select id  from proveedores where codigo = '0007')

insert into articulos (codigo,Descripcion,CategoriaTalleId,estado,FechaAlta,UsuarioAlta,ProveedorId,RequiereAutorizacion,Liquidacion)
select codigo,[Descripcion larga],@cattalleid,1,getdate(),'Admin',@proveedor,0,0
from ArticulosCob
where Proveedor =  '0007'  


set @proveedor = (select id  from proveedores where codigo = '0052')
set @cattalleid = (select id from CategoriaTalles where codigo = 'U')

insert into articulos (codigo,Descripcion,CategoriaTalleId,estado,FechaAlta,UsuarioAlta,ProveedorId,RequiereAutorizacion,Liquidacion)
select codigo,[Descripcion larga],@cattalleid,1,getdate(),'Admin',@proveedor,0,0
from ArticulosCob
where Proveedor =  '0052'  


set @proveedor = (select id  from proveedores where codigo = '0002')
set @cattalleid = (select id from CategoriaTalles where codigo = 'U')

insert into articulos (codigo,Descripcion,CategoriaTalleId,estado,FechaAlta,UsuarioAlta,ProveedorId,RequiereAutorizacion,Liquidacion)
select codigo,[Descripcion larga],@cattalleid,1,getdate(),'Admin',@proveedor,0,0
from ArticulosCob
where Proveedor =  '0002'

