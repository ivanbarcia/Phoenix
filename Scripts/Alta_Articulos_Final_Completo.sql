IF OBJECT_ID('tempdb..#_temp_rubros') IS NOT NULL
	DROP TABLE #_temp_rubros
DECLARE @Codigo varchar(250) = ''
DECLARE @Descripcion varchar(250) = ''
DECLARE @Precio float = 0
DECLARE @Costo float = 0
DECLARE @Bonif1 float = 0
DECLARE @Bonif2 float = 0
DECLARE @Utilidad float = 0
DECLARE @Rubro varchar(250) = ''
DECLARE @SubRubro varchar(250) = ''
DECLARE @Proveedor varchar(50) = ''
DECLARE @ColorId int = null
DECLARE @MaterialId int = null
DECLARE @TempId int = null
DECLARE @Talle varchar(255) = ''
DECLARE @TalleId int = null 
DECLARE @CatTalle int = null
DECLARE @ArtProv varchar(255) = ''
DECLARE @ArtCod varchar(255) = ''
DECLARE @VarAux varchar(250) = ''
DECLARE @CodArtAux varchar(255) = ''
DECLARE @PadreId int = null
DECLARE @ProveedorId int = null

DECLARE articulos_cob_cursor CURSOR FOR

SELECT codigo,[Descripcion larga],precio,costo,[Bonif# 1],[Bonif# 2],Utilidad,Rubro,SubRubro,Proveedor,CodTalleInterno,ArtProv,ArtCod
FROM articuloscob  
WHERE Procesado = 0
order by ArtProv,ArtCod,ArtTalle
	create table #_temp_rubros
				(
					codigoRubro	varchar(250)  COLLATE SQL_Latin1_General_CP1_CI_AS	,
					TempId		int													,
					TempCod		varchar(250)										,
					MaterialId	int													,
					MatCod		varchar(250)										,
					ColorId		int													,
					ColDesc		varchar(250)										
				)
	insert into #_temp_rubros (codigoRubro,TempId,TempCod,MaterialId,MatCod,ColorId,ColDesc)
				(
					select 
							rubros.CodTexto as CodigoRubro			,
							temporadas.id as TempId					,
							Temporadas.Codigo as TempCod			,
							insumos.Id as InsumoId					,
							Insumos.Codigo as MatCod				,
							colores.Id								,
							colores.Descripcion	
					from rubros
					left join colores
					on rubros.color = colores.Descripcion
					and colores.PadreId is not null
					LEFT join temporadas  
					on rubros.Temporada = temporadas.codigo
					left join insumos
					on rubros.[Tipo Material] + ' ' + rubros.Material = insumos.Descripcion
					and	insumos.EsMaterial = 1
					and colores.id = insumos.ColorId
				)
	
	SET @TempId = (select id from Temporadas where codigo = 'SD')
	SET @MaterialId = (select id from insumos where codigo = 'SD')
	UPDATE #_temp_rubros
	SET TempId = @TempId,TempCod = 'SD'
	where TempId is null
	UPDATE #_temp_rubros
	SET MaterialId = @MaterialId,MatCod = 'SD'
	where MaterialId is null
	
OPEN articulos_cob_cursor;  
FETCH NEXT FROM articulos_cob_cursor into  @Codigo,@Descripcion,@Precio,@Costo,@Bonif1,@Bonif2,@Utilidad,@Rubro,@SubRubro,@Proveedor,@Talle,@ArtProv,@ArtCod;
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		if @Talle <> '' or @Talle is null
			begin
				set @TalleId = (select id from talles where Codigo = @Talle)
			end
		else 
			begin
				set @TalleId = null
			end
		
		set @MaterialId = (select MaterialId from #_temp_rubros where codigoRubro = @Rubro)
		set @TempId = (select TempId from #_temp_rubros where codigoRubro = @Rubro) 
		set @ProveedorId = (select id from proveedores where codigo = @Proveedor)
		
		if (select count(*) from #_temp_rubros where MatCod= 'SD' and codigoRubro = @Rubro)> 0
			begin
				set @MaterialId = (select MaterialId from #_temp_rubros where codigoRubro = @SubRubro)
			end
		if (select count(*) from #_temp_rubros where TempCod= 'SD' and codigoRubro = @Rubro)> 0
			begin
				set @TempId = (select TempId from #_temp_rubros where codigoRubro = @SubRubro)
			end
	    if @TempId is null
			SET @TempId = (select id from Temporadas where codigo = 'SD')
		if @MaterialId is null
			SET @MaterialId = (select id from insumos where codigo = 'SD')
	
		EXEC SP_ASIGNO_PADRE
			@Codigo					,
			@ProveedorId			,
			@ArtProv				,
			@TalleId				,
			@Descripcion			,
			@Precio					,
			@Costo					,
			@Bonif1					,
			@Bonif2					,
			@TempId					,
			@MaterialId				,
			@PadreId = @PadreId output
		
		EXEC SP_INSERT_ARTICULOS 
					@Codigo			,
					@Descripcion	,
					@TalleId		,
					@ProveedorId 	,
					@Precio			,
					@Costo			,
					@Bonif1			,
					@Bonif2			,
					@TempId			,
					@MaterialId		,
					@PadreId
		
	  FETCH NEXT FROM articulos_cob_cursor into  @Codigo,@Descripcion,@Precio,@Costo,@Bonif1,@Bonif2,@Utilidad,@Rubro,@SubRubro,@Proveedor,@Talle,@ArtProv,@ArtCod;
	END;  
CLOSE articulos_cob_cursor;  
DEALLOCATE articulos_cob_cursor;  
GO  

