IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_ASIGNO_PROVEEDOR')
DROP PROCEDURE SP_ASIGNO_PROVEEDOR
GO
CREATE PROCEDURE SP_ASIGNO_PROVEEDOR
	@Codigo	varchar(50)			,
	@ProveedorId int	output	
	
AS
DECLARE @CodProveedorCOB1 varchar(250)
DECLARE @CodProveedorCOB2 varchar(250)
DECLARE @CodProveedorCOB3 varchar(250)
DECLARE @CodProveedorCOB4 varchar(250)
DECLARE @CodProveedorCOB5 varchar(250)
BEGIN TRY

	SET @CodProveedorCOB1 = (select Codigo from ProveedoresCob where CodDepo1 = @Codigo)
	SET @CodProveedorCOB2 = (select Codigo from ProveedoresCob where CodDepo2 = @Codigo)
	SET @CodProveedorCOB3 = (select Codigo from ProveedoresCob where CodDepo3 = @Codigo)
	SET @CodProveedorCOB4 = (select Codigo from ProveedoresCob where CodDepo4 = @Codigo)
	SET @CodProveedorCOB5 = (select Codigo from ProveedoresCob where CodDepo5 = @Codigo)

	SET @ProveedorId = (Select id from proveedores where codigo = @CodProveedorCOB1)
	if (@ProveedorId is null)
		SET @ProveedorId = (Select id from proveedores where codigo = @CodProveedorCOB2)
	if (@ProveedorId is null)
		SET @ProveedorId = (Select id from proveedores where codigo = @CodProveedorCOB3)
	if (@ProveedorId is null)
		SET @ProveedorId = (Select id from proveedores where codigo = @CodProveedorCOB4)
	if (@ProveedorId is null)
		SET @ProveedorId = (Select id from proveedores where codigo = @CodProveedorCOB5)
	if (@ProveedorId is null)
		SET @ProveedorId = (Select id from proveedores where codigo = 'SD')
END TRY
BEGIN CATCH
	EXECUTE usp_GetErrorInfo @Codigo,'',@ProveedorId;
END CATCH