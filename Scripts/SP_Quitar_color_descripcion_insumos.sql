IF OBJECT_ID ('SP_Quitar_color_descripcion_insumos', 'P') IS NOT NULL
    DROP PROCEDURE SP_Quitar_color_descripcion_insumos;
GO

-- Create a procedure to retrieve error information.
CREATE PROCEDURE SP_Quitar_color_descripcion_insumos
/*
Le quitamos el color en la desripción a los insumos que vinieron del sistema.
*/
AS
DECLARE @id int = null
DECLARE @ColorId int = null
DECLARE @Descripcion varchar(250) = ''
DECLARE @ColorDescrip varchar(250) =''

DECLARE insumos_colores_descripcion_cursor CURSOR FOR  
SELECT id,ColorId,Descripcion
FROM insumos
WHERE
	EsMaterial = 1
--and	ColorId is not null

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