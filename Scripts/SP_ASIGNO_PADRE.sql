IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_ASIGNO_PADRE')
DROP PROCEDURE SP_ASIGNO_PADRE
GO
CREATE PROCEDURE SP_ASIGNO_PADRE
	@Codigo	varchar(250)		,
	@ProveedorId int			,
	@ArtProv varchar(255)		,
	@TalleId	int				,
	@Descripcion varchar(250)	,
	@Precio decimal				,
	@Costo decimal				,
	@Bonif1 decimal				,
	@Bonif2 decimal				,
	@TempId int					,
	@MaterialId int				,
	@PadreId int OUTPUT			
	
AS
declare @posIn int = CHARINDEX('/',@codigo) + 1
declare @CantCar int = LEN(@Codigo)-@posIn+1
declare @VarAux varchar(250) 
declare @CatTalleId int = null
set @PadreId = null
BEGIN TRY
if @CantCar > 1
	begin
		if @talleid is null
			begin
				set @varAux = (select substring(@Codigo,@posIn,@CantCar-1))
				if @varAux is not null and @VarAux <> ''
					set @PadreId = (select top 1 Id from Articulos where ProveedorId = @ProveedorId and Codigo =@ArtProv + '/' + @VarAux) /*Busco padre con 1 caracter menos*/
						if @PadreId is null /* Si no encontro padre con 1 caracter menos busco con 2 caracteres*/
							begin
								set @varAux = (select substring(@Codigo,@posIn,@CantCar-2))
								if @varAux is not null and @VarAux <> ''
									set @PadreId = (select top 1 Id from Articulos where ProveedorId = @ProveedorId and Codigo =@ArtProv + '/' + @VarAux)
							end
				end
		else
			begin
				set @varAux = (select substring(@Codigo,@posin,@cantcar-2))
				if @varAux is not null and @varAux <>''
					begin
						set @PadreId = (select Id from Articulos where ProveedorId = @ProveedorId and Codigo =@ArtProv + '/' + @VarAux)/*Busco padre con 1 caracter menos*/
						if @PadreId is null /* Si no encontro padre con 1 caracter menos busco con 2 caracteres*/
							begin
								Set @VarAux = (select substring(@Codigo,@posin,@cantcar-3))
								Set @PadreId= (select Id from Articulos where ProveedorId = @ProveedorId and Codigo =@ArtProv + '/' + @VarAux)
							end
						if @Padreid is null
							begin
								set @CatTalleId = (
														select CategoriaTalleId from CategoriaAtributo
														where TalleId = @TalleId
														
												)
								set @posIn = CHARINDEX('/',@codigo) + 1
								set @CantCar = LEN(@Codigo)-@posIn+1
								set @varAux = (select substring(@Codigo,@posin,@cantcar-2))
				
								insert into Articulos
										(
											Codigo				,
											Descripcion			,
											CategoriaTalleId	,
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
											MargenUtilidad		,
											TemporadaId			,
											MaterialId			,
											Estado				,
											FechaAlta			,
											UsuarioAlta			,
											CodigoBarra			
										)
								select
										@ArtProv + '/' + @VarAux,
										@Descripcion			,
										@CatTalleId				,
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
										((@Precio/(case when @Costo= 0 then 1 else @costo end))-1)*100,
										@TempId					,
										@MaterialId				,
										1						, /*Estado*/
										getdate()				,
										'SQL Init'				,
										''						 /*Codigo de barra*/
								set @PadreId = (select Id from Articulos where ProveedorId = @ProveedorId and Codigo =@ArtProv + '/' + @VarAux)
							end
					end
			end
	end
END TRY
BEGIN CATCH
	EXECUTE usp_GetErrorInfo @Codigo,@VarAux,@PadreId;
END CATCH
