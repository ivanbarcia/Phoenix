create table articulos_aux
(
	id		int				,
	codigo	varchar(40)		,
	descripcion varchar(40)	,
	estado	int
);

create table articulos_aux_his
(
	id		int				,
	codigo	varchar(40)		,
	descripcion varchar(40)	,
	estado	int				,
	usuario varchar(200)	,
	fechahis datetime		,
	accion	varchar(40)		,
	motaccion varchar(250)

);
GO
CREATE TRIGGER tr_articulos_aux_INSERT
ON articulos_aux
AFTER insert
as
begin
declare  @id int = (select id from inserted)
declare  @codigo varchar(40) = (select codigo from inserted)
declare  @descripcion varchar(40) = (select descripcion from inserted)
declare  @estado int = (select estado from inserted)
insert into articulos_aux_his
(id,codigo,descripcion,estado,usuario,fechahis,accion,motaccion)
values (@id,@codigo,@descripcion,@estado,'Admin',getdate(),'INSERT',null)
end
GO
CREATE TRIGGER tr_articulos_aux_UPDATE
ON articulos_aux
AFTER update
as
begin
	declare  @id int = (select id from inserted)
	declare  @codigo varchar(40) = (select codigo from inserted)
	declare  @descripcion varchar(40) = (select descripcion from inserted)
	declare  @estado int = (select estado from inserted)
	declare  @motaccion varchar(250) = ''
	declare  @accion varchar(250) = 'UPDATE'
	declare	 @estadoant int = (select top 1 estado from articulos_aux_his where @id = id order by fechahis desc)
	declare	 @descripcionant varchar(40) = (select top 1 descripcion from articulos_aux_his where @id = id order by fechahis desc)

	if (@estado <> @estadoant)
		begin
			set @motaccion = @motaccion  +'/ESTADO'
			if (@estado = 0)
				begin
					set @accion = 'LOG DELETE';
				end
			else
				begin
					set @accion = 'REACTiVACION';
				end
		end
	if @descripcion <> @descripcionant
		begin
			set @motaccion =@motaccion  + '/DESCRIPCION'
		end
	begin 
		insert into articulos_aux_his
			(id,codigo,descripcion,estado,usuario,fechahis,accion,motaccion)
			values (@id,@codigo,@descripcion,@estado,'Admin',getdate(),@accion,@motaccion)
	end
end
GO
CREATE TRIGGER tr_articulos_aux_DELETE 
ON articulos_aux
AFTER delete
as
begin
	begin 
		insert into articulos_aux_his
		select id,codigo,descripcion,estado,'Admin',getdate(),'DELETE','' from deleted 
	end
end

/*
fechahis cambiar por fecha
motaccion cambiar por motivo
nombre de tablas _history
delete from articulos_aux
delete from articulos_aux_his

insert into articulos_aux
select 1,'PR1','Prueba2',0

update articulos_aux
set estado =  0,descripcion =  'MODIF DESC432'
where id = 3

update articulos_aux
set descripcion =  'MODIF DESC45'
where id = 1
select * from articulos_aux_his
DELETE FROM ARTICULOS_AUX
WHERE ID = 3
*/