DECLARE @UNIDADMEDIDAID int= (select id from UnidadesMedida where codigo = 'MTS')
DECLARE @proveedor int = (select id from Proveedores where codigo = '000Z')
DECLARE @codigoInsumo int = 1
DECLARE @Material varchar(250) = ''
DECLARE @TipoMaterial varchar(250) = ''
DECLARE @MaterialAnt varchar(250) = ''
DECLARE @TipoMaterialAnt varchar(250) = ''
DECLARE @Color varchar(250) = ''
DECLARE @subdesc1 varchar(250) = ''
DECLARE @subdesc2 varchar(250) = ''
DECLARE @subdesc3 varchar(250) = ''
DECLARE @temporada varchar(50) = ''
DECLARE @CodColor int = 0
DECLARE @colorId int= null
DECLARE @TempId int = null
DECLARE colores_cursor CURSOR FOR  
SELECT [Tipo Material],material,color,subdesc1,SubDesc2,SubDesc3,Temporada    
FROM rubros  
order by [Tipo Material],[Material]
OPEN colores_cursor;  
FETCH NEXT FROM colores_cursor into  @tipoMaterial,@Material,@Color,@subdesc1,@subdesc2,@subdesc3,@temporada;  
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		if (select count(*) from insumos where 
										Descripcion like '%'+@subdesc1+'%' 
									and Descripcion like '%'+@subdesc2+'%' 
									and Descripcion like '%'+@subdesc3+'%') = 0 /* Verifico que no exista en insumos alguno parecido*/
			BEGIN
				set @colorId = (select id from Colores where Descripcion = @Color and PadreId is not null)
				set @TempId = (select top 1 id from Temporadas where codigo = @temporada)
				
				if (select count(*) from insumos where descripcion = @TipoMaterial + ' ' + @Material and colorID = @colorid) =0 /*Verifico que no exista ya en insumos con el mismo color*/
					BEGIN
						/*Este if es para poder dar de alta o el padre o los hijos*/
						if (@TipoMaterial = @TipoMaterialAnt and @Material = @MaterialAnt)
							BEGIN
								set @CodColor = @CodColor  +1
								insert into insumos (Codigo,Descripcion,EsMaterial,UnidadMedidaId,ProveedorId,Estado,FechaAlta,UsuarioAlta,StockMinimo,ColorId,TemporadaId,Precio)
								(select 'ZZZ/'+ CAST(@codigoInsumo as varchar(250)) +'/' +CAST(@CodColor as varchar(250)),@TipoMaterial + ' '+ @Material,1,@UNIDADMEDIDAID,@proveedor,1,getdate(),'SQLInit',0,@colorId,@TempId,0)
							END
						ELSE
							BEGIN
								set @codigoInsumo = @codigoInsumo + 1 
								insert into insumos (Codigo,Descripcion,EsMaterial,UnidadMedidaId,ProveedorId,Estado,FechaAlta,UsuarioAlta,StockMinimo,ColorId,TemporadaId,Precio)
								(select 'ZZZ/'+ CAST(@codigoInsumo as varchar(250)),@TipoMaterial + ' '+ @Material,1,@UNIDADMEDIDAID,@proveedor,1,getdate(),'SQLInit',0,@colorId,@TempId,0)
						
								set @CodColor = 0
							END
					END
			END
	  SET @TipoMaterialAnt = @TipoMaterial
	  SET @MaterialAnt = @Material			
      FETCH NEXT FROM colores_cursor into  @tipoMaterial,@Material,@Color,@subdesc1,@subdesc2,@subdesc3,@temporada;  
	END;  
CLOSE colores_cursor;  
DEALLOCATE colores_cursor;  
GO