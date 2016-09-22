CREATE TABLE [dbo].[Insumos_His](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdInsumo] [int] NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[EsMaterial] [bit] NOT NULL,
	[UnidadMedidaId] [int] NOT NULL,
	[StockMinimo] [int] NOT NULL,
	[ProveedorId] [int] NOT NULL,
	[Foto] [nvarchar](max) NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[ColorId] [int] NULL,
	[TemporadaId] [int] NULL,
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
 CONSTRAINT [PK_dbo.Insumos_his] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
CREATE TRIGGER tr_insumos_his_INSERT
ON insumos
AFTER insert
as
begin

	INSERT INTO insumos_his
		select 
				Id						,
				Codigo					,
				Descripcion				,
				EsMaterial				,
				UnidadMedidaId			,
				StockMinimo				,
				ProveedorId				,
				Foto					,
				Precio					,
				ColorId					,
				TemporadaId				,
				Estado					,
				FechaAlta				,
				UsuarioAlta				,
				FechaModificacion		,
				UsuarioModificacion		,
				FechaBaja				,
				UsuarioBaja				,
				FechaAutorizacion		,
				UsuarioAutorizacion		,
				'INSERT'				,
				UsuarioAlta
		FROM
				inserted
			
end
GO
CREATE TRIGGER tr_insumos_his_UPDATE
ON insumos
AFTER update
as
begin
	INSERT INTO insumos_his
		select 
				Id						,
				Codigo					,
				Descripcion				,
				EsMaterial				,
				UnidadMedidaId			,
				StockMinimo				,
				ProveedorId				,
				Foto					,
				Precio					,
				ColorId					,
				TemporadaId				,
				Estado					,
				FechaAlta				,
				UsuarioAlta				,
				FechaModificacion		,
				UsuarioModificacion		,
				FechaBaja				,
				UsuarioBaja				,
				FechaAutorizacion		,
				UsuarioAutorizacion		,
				'UPDATE'				,
				UsuarioModificacion
		FROM
				inserted
end
GO
CREATE TRIGGER tr_insumos_his_DELETE 
ON insumos
AFTER delete
as
begin
	begin 
		INSERT INTO insumos_his
		select 
				Id						,
				Codigo					,
				Descripcion				,
				EsMaterial				,
				UnidadMedidaId			,
				StockMinimo				,
				ProveedorId				,
				Foto					,
				Precio					,
				ColorId					,
				TemporadaId				,
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
