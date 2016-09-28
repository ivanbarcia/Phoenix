IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_INSERT_ARTICULOS')
DROP PROCEDURE SP_INSERT_ARTICULOS
GO
CREATE PROCEDURE SP_INSERT_ARTICULOS
	@Codigo varchar(250)		,
	@Descripcion varchar(250)	,
	@TalleId int				,
	@ProveedorId int			,
	@Precio decimal				,
	@Costo decimal				,
	@Bonif1 decimal				,
	@Bonif2 decimal				,
	@TempId int					,
	@MaterialId int				,
	@PadreId int
AS
BEGIN TRY
	if @ProveedorId is not null
		begin
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
							MargenUtilidad		,
							TemporadaId			,
							MaterialId			,
							Estado				,
							FechaAlta			,
							UsuarioAlta			,
							CodigoBarra			,
							PadreId
						)
			select
						@Codigo					,
						@Descripcion			,
						@TalleId				,
						@ProveedorId			,
						0						, /*Requiere Autorización*/
						0						, /*Se Encuentra en liquidación*/
						@Precio					,
						@Costo			,
						0						, /*Costo Fijo 1*/
						0						, /*Costo Fijo 2*/
						0						, /*Costo Fijo 3*/
						@Bonif1					,
						@Bonif2					,
						((@Precio/(case when @Costo= 0 then 1 else @Costo end))-1)*100,
						@TempId					,						
						@MaterialId				,
						1						, /*Estado*/
						getdate()				,
						'SQL Init'				,
						''						, /*Codigo de barra*/
						@PadreId
			If @@ERROR = 0
				begin
					update articuloscob
							set procesado = 1
							where codigo = @Codigo
				end
		end
END TRY
BEGIN CATCH
	EXECUTE usp_GetErrorInfo @Codigo,@Descripcion,@PadreId;
END CATCH
GO

