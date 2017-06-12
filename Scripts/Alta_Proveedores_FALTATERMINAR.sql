DECLARE @Codigo					VARCHAR(250)
DECLARE @RAZONSOCIAL			VARCHAR(250)
DECLARE @CUIT					VARCHAR(250)
DECLARE @DIRECCION				VARCHAR(250)
DECLARE @CODPOS					VARCHAR(250)
DECLARE @TELEFONO				VARCHAR(250)
DECLARE @NUMFAX					VARCHAR(250)
DECLARE @PAIS					VARCHAR(250)
DECLARE @PROVINCIA				VARCHAR(250)
DECLARE @LOCALIDAD				VARCHAR(250)
DECLARE @TIPIVA					VARCHAR(250)
DECLARE @NROIIBB				VARCHAR(250)
DECLARE @INSCGANANCIAS			VARCHAR(250)
DECLARE @AGPERCEPCION			VARCHAR(250)
DECLARE @AGRETENCION			VARCHAR(250)
DECLARE @TIPOIVA1				VARCHAR(250)
DECLARE @TIPOIVA2				VARCHAR(250)
DECLARE @TIPOIVA3				VARCHAR(250)
DECLARE @IMPUTACIONCONTABLE		VARCHAR(250)
DECLARE @TIPORETENCION			VARCHAR(250)
DECLARE @TIPOPROVEEDOR			VARCHAR(250)
DECLARE @CuitValido				BIT
DECLARE @PaisId					INT
DECLARE @ProvinciaId			INT
DECLARE @LocalidadId			INT
DECLARE @CondIVAId				INT
DECLARE @CtaContableId			INT
DECLARE @TipoRetencionId		INT
DECLARE @TipoImputacionId		INT

DECLARE proveedores_cursor CURSOR FOR

SELECT Codigo,[RAZON SOCIAL],CUIT,DIRECCION,CODPOS,TELEFONO,NUMFAX,PaisCOD,PROVCOD,LOCALIDAD,TIPIVA,[NRO IIBB],[INSc# GANANCIAS],[AG# PERCEPCION],[AG# RETENCION],[TIPO IVA 1],[TIPO IVA 2],[TIPO IVA 3],[IMPUTACION CONTABLE],[TIPO DE RETENCION],[TIPO PROVEEDOR]
FROM ProveedoresCob
WHERE Procesado = 0
OPEN proveedores_cursor;  
FETCH NEXT FROM proveedores_cursor into @Codigo,@RAZONSOCIAL,@CUIT,@DIRECCION,@CODPOS,@TELEFONO,@NUMFAX,@PAIS,@PROVINCIA,@LOCALIDAD,@TIPIVA,@NROIIBB,@INSCGANANCIAS,@AGPERCEPCION,@AGRETENCION,@TIPOIVA1,@TIPOIVA2,@TIPOIVA3,@IMPUTACIONCONTABLE,@TIPORETENCION,@TIPOPROVEEDOR;
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		BEGIN TRY
				SET @PaisId = (select id from paises where codigo = @PAIS)
				
				SET @ProvinciaId= (select id from provincias where codigo = @PROVINCIA and PaisId =@PaisId)
				SET @LocalidadId = (select top 1 id from Localidades where @LOCALIDAD like '%' + descripcion + '%' and ProvinciaId = @ProvinciaId)
				if (@LocalidadId is null)
				BEGIN
					SET @LocalidadId = (select top 1 id from Localidades where @LOCALIDAD like '%' + descripcion + '%')
					SET @ProvinciaId = (select provinciaid from localidades where id = @LocalidadId)
				END
				IF @ProvinciaId IS NULL
					SET @ProvinciaId = (select id from provincias where codigo = 'SDARG')
				IF @LocalidadId IS NULL
					SET @LocalidadId = (select id from localidades where codigo  = 'SDCABA')

				SET @CondIVAId =	(CASE @TIPIVA
										WHEN '1' THEN (select id from CondicionesIVA where codigo = 'CF')
 										WHEN '2' THEN (select id from CondicionesIVA where codigo = 'RNI')
										WHEN '3' THEN (select id from CondicionesIVA where codigo = 'RI')
										WHEN '4' THEN (select id from CondicionesIVA where codigo = 'EX')
									END)
				
				SET @CtaContableId =	(CASE @IMPUTACIONCONTABLE
										WHEN '001' THEN (select id from Cuentas where codigo = '1')
 										WHEN '201' THEN (select id from Cuentas where codigo = '201')
										ELSE (select id from Cuentas where codigo = 'SD')
									END)
				SET @TipoRetencionId = (select id from retenciones where codigo = @TIPORETENCION)

				--SET @TipoImputacionId = (select id from 

				SET @CuitValido = 1
				If @PAIS = 'ARG'
					EXEC SP_ValidarCUIT @Cuit,@CuitValido OUTPUT
							
				SET @NROIIBB = (REPLACE (@NROIIBB,'-',''))
				SET @NROIIBB = (REPLACE (@NROIIBB,'/',''))
				SET @NROIIBB = (REPLACE (@NROIIBB,' ',''))

				SET @CUIT = (REPLACE (@CUIT,'-',''))
				SET @CUIT = (REPLACE (@CUIT,'/',''))
				SET @CUIT = (REPLACE (@CUIT,' ',''))


				IF @CuitValido = 1
				BEGIN
					INSERT INTO Proveedores
						(
							Codigo					,
							Descripcion,--RazonSocial				,
							CUIT					,
							DomicilioFiscal			,
							CodigoPostal			,
							Telefono1				,
							Telefono2				,
							PaisId					,
							ProvinciaId				,
							LocalidadId				,
							CondicionIVAId			,
							IngresosBrutos			,
							InsGanancias			,
							AgentePercepcion		,
							AgenteRetencion			,
							IVA105					,
							IVA21					,
							IVA27					,
							CuentaContableId		,
							TipoRetencionId			,
							TipoImputacionId		,
							Estado					,
							FechaAlta				,
							UsuarioAlta
						)
					VALUES
						(
							@Codigo						,
							@RAZONSOCIAL				,
							@CUIT						,
							@DIRECCION					,
							@CODPOS						,
							1,--@TELEFONO					,
							2,--@NUMFAX						,
							@PaisId						,
							@ProvinciaId				,
							@LocalidadId				,
							@CondIVAId					,
							111111,--@NROIIBB					,
							(CASE WHEN @INSCGANANCIAS ='S' THEN 1 ELSE 0 END)	,
							(CASE WHEN @AGPERCEPCION ='S' THEN 1 ELSE 0 END)	,
							(CASE WHEN @AGRETENCION ='S' THEN 1 ELSE 0 END)		,
							(CASE WHEN @TIPOIVA1 ='S' THEN 1 ELSE 0 END)		,
							(CASE WHEN @TIPOIVA2 ='S' THEN 1 ELSE 0 END)		,
							(CASE WHEN @TIPOIVA3 ='S' THEN 1 ELSE 0 END)		,
							@CtaContableId				,
							@TipoRetencionId			,
							1							,--@TipoImputacionId		,
							1							,
							getdate()					,
							'SQL Init'					
						)
					UPDATE ProveedoresCob
					SET Procesado = 1
					WHERE codigo = @Codigo
				END	
		END TRY
		BEGIN CATCH
			EXECUTE usp_GetErrorInfo @Codigo,@RAZONSOCIAL,0;
		END CATCH
FETCH NEXT FROM proveedores_cursor into @Codigo,@RAZONSOCIAL,@CUIT,@DIRECCION,@CODPOS,@TELEFONO,@NUMFAX,@PAIS,@PROVINCIA,@LOCALIDAD,@TIPIVA,@NROIIBB,@INSCGANANCIAS,@AGPERCEPCION,@AGRETENCION,@TIPOIVA1,@TIPOIVA2,@TIPOIVA3,@IMPUTACIONCONTABLE,@TIPORETENCION,@TIPOPROVEEDOR;
	END;  
CLOSE proveedores_cursor;  
DEALLOCATE proveedores_cursor;  
GO
INSERT INTO Proveedores
(
	Codigo					,
	Descripcion,--RazonSocial				,
	CUIT					,
	DomicilioFiscal			,
	CodigoPostal			,
	Telefono1				,
	Telefono2				,
	PaisId					,
	ProvinciaId				,
	LocalidadId				,
	CondicionIVAId			,
	IngresosBrutos			,
	InsGanancias			,
	AgentePercepcion		,
	AgenteRetencion			,
	IVA105					,
	IVA21					,
	IVA27					,
	CuentaContableId		,
	TipoRetencionId			,
	TipoImputacionId		,
	Estado					,
	FechaAlta				,
	UsuarioAlta
)
VALUES
(
	'SD'						,
	'SIN DEFINIR'				,
	1							,
	'SIN DEFINIR'				,
	1111						,
	1111						,
	1111						,					
	(select id from paises where codigo = 'ARG')		,
	(select id from provincias where codigo = 'SDARG')	,
	(select id from localidades where codigo = 'SDCABA'),
	(select id from condicionesiva where codigo = 'CF')	,
	111111						,
	0							,
	0							,
	0							,
	0							,
	0							,
	0							,
	(select id from cuentas where codigo = 'SD')		,
	(select id from retenciones where codigo = '0010')	,
	1							,
	1							,
	getdate()					,
	'SQL Init'
)