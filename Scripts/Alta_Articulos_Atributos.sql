DECLARE @id int = null
DECLARE @Descripcion varchar(250) = ''
DECLARE @idAtributo int = null
DECLARE @PosFin int = null

DECLARE articulos_atributos_cursor CURSOR FOR  
SELECT id,Descripcion
FROM articulos

OPEN articulos_atributos_cursor;  
FETCH NEXT FROM articulos_atributos_cursor into @Id,@Descripcion
WHILE @@FETCH_STATUS = 0  
BEGIN  
	Set @PosFin = CHARINDEX('/',@Descripcion) -1 
	if (@Posfin >0)
	BEGIN
		if (select count(*) from atributos where descripcion like '%' + SUBSTRING(@Descripcion,1,@PosFin) +'%')>0
		BEGIN
			SET @idAtributo = (select top 1 id from atributos where descripcion like '%' + SUBSTRING(@Descripcion,1,@PosFin) +'%')
				
			INSERT INTO ArticuloAtributos
			(ArticuloId			,
			AtributoId			,
			Estado				,
			FechaAlta			,
			UsuarioAlta			)
			values
			(@id				,
			@idAtributo			,
			1					,
			getdate()			,
			'SQL Init'			)
		END
	END
	FETCH NEXT FROM articulos_atributos_cursor into @Id,@Descripcion
END;  
CLOSE articulos_atributos_cursor;  
DEALLOCATE articulos_atributos_cursor;  
GO  
