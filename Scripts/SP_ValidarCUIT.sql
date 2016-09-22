IF OBJECT_ID ('SP_ValidarCUIT', 'P') IS NOT NULL
    DROP PROCEDURE SP_ValidarCUIT;
GO

-- Create a procedure to retrieve error information.
CREATE PROCEDURE SP_ValidarCUIT
	@Cuit	varchar(250)		,
	@Valido bit  output
AS
    declare @verificador int
	declare @resultado int = 0
	declare @codes varchar(10) = '6789456789'

	SET @CUIT = (REPLACE(@CUIT,'-',''))
	SET @CUIT = (REPLACE(@CUIT,' ',''))

	if isnumeric(@Cuit) <> 1
	begin
		SET @Valido = 0
	end

	if len(LTRIM(RTRIM(@Cuit))) <> 11
	begin
		SET @Valido = 0
	end

	set @verificador = RIGHT(@Cuit, 1)

	declare @x int = 0

	while @x < 10
	begin
		declare @digitoValidador int = convert(int, substring(@codes, @x + 1, 1))
		declare @digito int = convert(int, substring(@Cuit, @x + 1, 1))
		declare @digitoValidacion int = @digitoValidador * @digito
		set @resultado = @resultado + @digitoValidacion
		set @x = @x + 1
	end

	set @resultado = @resultado % 11

	If @resultado = @verificador
	begin
		SET @Valido = 1
	end
	else
	begin
		set @Valido = 0
	End
GO
