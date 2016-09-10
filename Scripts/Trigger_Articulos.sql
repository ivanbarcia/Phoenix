CREATE TABLE [dbo].[Articulos_His](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Art] [int] NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[CategoriaTalleId] [int] NULL,
	[TalleId] [int] NULL,
	[ProveedorId] [int] NOT NULL,
	[Foto] [nvarchar](max) NULL,
	[CodigoBarra] [nvarchar](max) NULL,
	[Observacion] [nvarchar](max) NULL,
	[PadreId] [int] NULL,
	[RequiereAutorizacion] [bit] NOT NULL,
	[Liquidacion] [bit] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Costo] [decimal](18, 2) NOT NULL,
	[CostoFijo1] [decimal](18, 2) NOT NULL,
	[CostoFijo2] [decimal](18, 2) NOT NULL,
	[CostoFijo3] [decimal](18, 2) NOT NULL,
	[Bonificacion1] [decimal](18, 2) NOT NULL,
	[Bonificacion2] [decimal](18, 2) NOT NULL,
	[MargenUtilitad] [decimal](18, 2) NOT NULL,
	[TemporadaId] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
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
 CONSTRAINT [PK_dbo.Articulos_His] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
CREATE TRIGGER tr_articulos_his_INSERT
ON articulos
AFTER insert
as
begin

	INSERT INTO Articulos_His
		select 
				Id							,
				Codigo						,	
				Descripcion					,		
				CategoriaTalleId			,		
				TalleId						,		
				ProveedorId					,		
				Foto						,		
				CodigoBarra					,		
				Observacion					,			
				PadreId						,		
				RequiereAutorizacion		,		
				Liquidacion					,		
				Precio						,		
				Costo						,		
				CostoFijo1					,		
				CostoFijo2					,		
				CostoFijo3					,		
				Bonificacion1				,		
				Bonificacion2				,		
				MargenUtilitad				,		
				TemporadaId					,		
				MaterialId					,		
				Estado						,		
				FechaAlta					,		
				UsuarioAlta					,		
				FechaModificacion			,		
				UsuarioModificacion			,
				FechaBaja					,		
				UsuarioBaja					,		
				FechaAutorizacion			,		
				UsuarioAutorizacion			,
				'INSERT'					,
				UsuarioAlta
		FROM
				inserted
			
end
GO
CREATE TRIGGER tr_articulos_his_UPDATE
ON articulos
AFTER update
as
begin
	INSERT INTO Articulos_His
		select 
				Id							,
				Codigo						,	
				Descripcion					,		
				CategoriaTalleId			,		
				TalleId						,		
				ProveedorId					,		
				Foto						,		
				CodigoBarra					,		
				Observacion					,			
				PadreId						,		
				RequiereAutorizacion		,		
				Liquidacion					,		
				Precio						,		
				Costo						,		
				CostoFijo1					,		
				CostoFijo2					,		
				CostoFijo3					,		
				Bonificacion1				,		
				Bonificacion2				,		
				MargenUtilitad				,		
				TemporadaId					,		
				MaterialId					,		
				Estado						,		
				FechaAlta					,		
				UsuarioAlta					,		
				FechaModificacion			,		
				UsuarioModificacion			,
				FechaBaja					,		
				UsuarioBaja					,		
				FechaAutorizacion			,		
				UsuarioAutorizacion			,
				'UPDATE'					,
				UsuarioModificacion
		FROM
				inserted
end
GO
CREATE TRIGGER tr_articulos_his_DELETE 
ON articulos
AFTER delete
as
begin
	begin 
		INSERT INTO Articulos_His
		select 
				Id							,
				Codigo						,	
				Descripcion					,		
				CategoriaTalleId			,		
				TalleId						,		
				ProveedorId					,		
				Foto						,		
				CodigoBarra					,		
				Observacion					,			
				PadreId						,		
				RequiereAutorizacion		,		
				Liquidacion					,		
				Precio						,		
				Costo						,		
				CostoFijo1					,		
				CostoFijo2					,		
				CostoFijo3					,		
				Bonificacion1				,		
				Bonificacion2				,		
				MargenUtilitad				,		
				TemporadaId					,		
				MaterialId					,		
				Estado						,		
				FechaAlta					,		
				UsuarioAlta					,		
				FechaModificacion			,		
				UsuarioModificacion			,
				FechaBaja					,		
				UsuarioBaja					,		
				FechaAutorizacion			,		
				UsuarioAutorizacion			,
				'DELETE'					,
				UsuarioBaja
		FROM
				deleted
	end
end
