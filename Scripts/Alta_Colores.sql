/*
	INSERT DE COLORES PADRES A MANO
*/
insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'NEGRO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'BLANCO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'AMARILLO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'NARANJA',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'ROJO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'VERDE',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'MARRON',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'AZUL',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'BORDO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'COMBINADO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'GRIS',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'LEOPARDO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'ORO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'PLATA',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'PLATINO',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'ROSA',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'SD',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'SUELA',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'VIOLETA',NULL,1,getdate(),'SQL Init'

insert into colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
select 'NATURAL',NULL,1,getdate(),'SQL Init'
GO
INSERT INTO Colores (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
(
select rubros.color,colores.id,1,getdate(),'SQL Init' from rubros
inner join colores 
on
		colores.padreid  is null
and		rubros.ColorPadre = colores.descripcion 
group by rubros.color,colores.id

)


