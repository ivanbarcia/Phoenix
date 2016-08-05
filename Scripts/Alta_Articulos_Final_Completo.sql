create table #_temp_rubros
(
	codigoRubro	varchar(250)  COLLATE SQL_Latin1_General_CP1_CI_AS	,
	colorId		int											,
	TempId		int											,
	MaterialId	int
)
insert into #_temp_rubros (codigoRubro,colorId,TempId,MaterialId)
(
select rubros.CodTexto as CodigoRubro,colores.id as ColorId,temporadas.id as TempId,insumos.Id as InsumoId from rubros
left join colores
on rubros.color = colores.Descripcion
and colores.PadreId <>  0
LEFT join temporadas 
on rubros.Temporada = temporadas.codigo
LEFT join insumos
on rubros.[Tipo Material] + ' ' + rubros.Material = insumos.Descripcion
and colores.id = insumos.colorid 
and insumos.EsMaterial = 1
)
GO
DECLARE @ColorId int = (select id from colores where Descripcion = 'SD' and PadreId = 0)
DECLARE @TempId int = (select id from Temporadas where codigo = 'SD')
DECLARE @MaterialId int = (select id from insumos where codigo = 'SD')
UPDATE #_temp_rubros
SET colorId = @ColorId
where colorid is null
UPDATE #_temp_rubros
SET TempId = @TempId
where TempId is null
UPDATE #_temp_rubros
SET MaterialId = @MaterialId
where MaterialId is null
GO


DECLARE @Codigo varchar(250) = ''
DECLARE @Descripcion varchar(250) = ''
DECLARE @Precio float = 0
DECLARE @Costo float = 0
DECLARE @Bonif1 float = 0
DECLARE @Bonif2 float = 0
DECLARE @Utilidad float = 0
DECLARE @Rubro varchar(250) = ''
DECLARE @Proveedor varchar(50) = ''
DECLARE @ColorId int = null
DECLARE @MaterialId int = null
DECLARE @TempId int = null
DECLARE @Talle varchar(255) = ''
DECLARE @TalleId int = null
DECLARE @CatTalle int = null
DECLARE @ArtProv varchar(255) = ''
DECLARE @ArtCod varchar(255) = ''
DECLARE @VarAux int = null
DECLARE @CodArtAux varchar(255) = ''
DECLARE @PadreId int = null
DECLARE @ProveedorId int = null

DECLARE articulos_cob_cursor CURSOR FOR  
SELECT codigo,[Descripcion larga],precio,costo,[Bonif# 1],[Bonif# 2],Utilidad,Rubro,Proveedor,CodTalleInterno,ArtProv,ArtCod
FROM articuloscob  
WHERE Procesado = 0 
order by Codigo
OPEN articulos_cob_cursor;  
FETCH NEXT FROM articulos_cob_cursor into  @Codigo,@Descripcion,@Precio,@Costo,@Bonif1,@Bonif2,@Utilidad,@Rubro,@Proveedor,@Talle,@ArtProv,@ArtCod;
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		if @Talle <> '' or @Talle is not null
			begin
				set @TalleId = (select id from talles where Codigo = @Talle)
			end
		else 
			begin
				set @TalleId = null
			end
		set @ColorId = (select colorId from #_temp_rubros where codigoRubro  = @Rubro)
		set @MaterialId = (select MaterialId from #_temp_rubros where codigoRubro = @Rubro)
		set @TempId = (select TempId from #_temp_rubros where codigoRubro = @Rubro) 
		set @ProveedorId = (select id from proveedores where codigo = @Proveedor)
		
	/*	if (select (len(@codigo) - len(replace(@codigo, '/', ''))) / len('/') ) = 2 /* Verifico si tengo 2 baras*/
			begin
				set @VarAux = Len(@ArtCod)-2
				set @CodArtAux = (select substring(@ArtCod,1,@VarAux))
				if (select count(*) from articulos where codigo = @ArtProv + '/'+ @CodArtAux) = 1
					begin
						set @PadreId = (select id from Articulos where codigo = @ArtProv + '/'+ @CodArtAux)
					end
				else
					begin
					end
			end
		print @codigo		
		*/
		insert into Articulos
				(
					Codigo				,
					Descripcion			,
					TalleId				,
					ProveedorId			,
					RequiereAutorizacion,
					Liquidacion			,
					Precio				,
					Costo				,
					CostoFijo1			,
					CostoFijo2			,
					CostoFijo3			,
					Bonificacion1		,
					Bonificacion2		,
					MargenUtilitad		,
					TemporadaId			,
					ColorId				,
					MaterialId			,
					Estado				,
					FechaAlta			,
					UsuarioAlta
				)
		select
				@Codigo					,
				@Descripcion			,
				@TalleId				,
				@ProveedorId			,
				0						, /*Requiere Autorización*/
				0						, /*Se Encuentra en liquidación*/
				@Precio					,
				@Costo					,
				0						, /*Costo Fijo 1*/
				0						, /*Costo Fijo 2*/
				0						, /*Costo Fijo 3*/
				@Bonif1					,
				@Bonif2					,
				@Utilidad				,
				@TempId					,
				@ColorId				,
				@MaterialId				,
				1						, /*Estado*/
				getdate()				,
				'SQL Init'
	 If @@ERROR = 0
		begin
			update articuloscob
					set procesado = 1
					where codigo = @Codigo
		end
	  FETCH NEXT FROM articulos_cob_cursor into  @Codigo,@Descripcion,@Precio,@Costo,@Bonif1,@Bonif2,@Utilidad,@Rubro,@Proveedor,@Talle,@ArtProv,@ArtCod;
	END;  
CLOSE articulos_cob_cursor;  
DEALLOCATE articulos_cob_cursor;  
GO  
