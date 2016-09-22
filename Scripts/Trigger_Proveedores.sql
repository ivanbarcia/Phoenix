CREATE TABLE [dbo].[Proveedores_His](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProv] [int] NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[RazonSocial] [nvarchar](max) NULL,
	[CUIT] [nvarchar](max) NULL,
	[Domicilio] [nvarchar](max) NULL,
	[DomicilioFiscal] [nvarchar](max) NULL,
	[CodigoPostal] [nvarchar](max) NULL,
	[Telefono1] [int] NOT NULL,
	[Telefono2] [int] NULL,
	[Telefono3] [int] NULL,
	[Email1] [nvarchar](max) NULL,
	[Email2] [nvarchar](max) NULL,
	[PaisId] [int] NOT NULL,
	[ProvinciaId] [int] NOT NULL,
	[LocalidadId] [int] NOT NULL,
	[CondicionIVAId] [int] NOT NULL,
	[IngresosBrutos] [int] NOT NULL,
	[InsGanancias] [bit] NOT NULL,
	[AgentePercepcion] [bit] NOT NULL,
	[AgenteRetencion] [bit] NOT NULL,
	[IVA105] [bit] NOT NULL,
	[IVA21] [bit] NOT NULL,
	[IVA27] [bit] NOT NULL,
	[CuentaContableId] [int] NOT NULL,
	[TipoRetencionId] [int] NOT NULL,
	[TipoImputacionId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[Accion] [nvarchar] (256) NULL,
	[UsuarioAccion] [nvarchar] (256) NULL
 CONSTRAINT [PK_dbo.Proveedores_His] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
CREATE TRIGGER tr_proveedores_his_INSERT
ON proveedores
AFTER insert
as
begin

	INSERT INTO proveedores_His
		select 
					Id						,
					Codigo					,
					RazonSocial				,
					CUIT					,
					Domicilio				,
					DomicilioFiscal			,
					CodigoPostal			,
					Telefono1				,
					Telefono2				,
					Telefono3				,
					Email1					,
					Email2					,
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
					UsuarioAlta				,
					FechaModificacion		,
					UsuarioModificacion		,
					FechaBaja				,
					UsuarioBaja				,
					FechaAutorizacion		,
					UsuarioAutorizacion		,
					'INSERT'					,
					UsuarioAlta
		FROM
				inserted
			
end
GO
CREATE TRIGGER tr_proveedores_his_UPDATE
ON proveedores
AFTER update
as
begin
	INSERT INTO proveedores_His
		select 
					Id						,
					Codigo					,
					RazonSocial				,
					CUIT					,
					Domicilio				,
					DomicilioFiscal			,
					CodigoPostal			,
					Telefono1				,
					Telefono2				,
					Telefono3				,
					Email1					,
					Email2					,
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
					UsuarioAlta				,
					FechaModificacion		,
					UsuarioModificacion		,
					FechaBaja				,
					UsuarioBaja				,
					FechaAutorizacion		,
					UsuarioAutorizacion		,
					'UPDATE'					,
					UsuarioModificacion
		FROM
				inserted
end
GO
CREATE TRIGGER tr_proveedores_his_DELETE 
ON proveedores
AFTER delete
as
begin
	begin 
		INSERT INTO proveedores_His
		select 
					Id						,
					Codigo					,
					RazonSocial				,
					CUIT					,
					Domicilio				,
					DomicilioFiscal			,
					CodigoPostal			,
					Telefono1				,
					Telefono2				,
					Telefono3				,
					Email1					,
					Email2					,
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
					UsuarioAlta				,
					FechaModificacion		,
					UsuarioModificacion		,
					FechaBaja				,
					UsuarioBaja				,
					FechaAutorizacion		,
					UsuarioAutorizacion		,
					'DELETE'				,
					UsuarioBaja
		FROM
				deleted
	end
end
