USE [Phoenix]
GO
/****** Object:  Table [dbo].[AperturaCierre]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AperturaCierre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalPuntoVentaId] [int] NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[FechaCierre] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AperturaCierre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloAtributos]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloAtributos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[AtributoId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloAtributos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloBonificaciones]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloBonificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[BonificacionId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloBonificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloColores]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloColores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloColores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloCostos]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloCostos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Costo] [decimal](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloCostos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloInsumos]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloInsumos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[InsumoId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloInsumos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloOferta]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloOferta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[PrecioOferta] [decimal](18, 2) NOT NULL,
	[PorcentajeDescuento] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloOferta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloPrecios]    Script Date: 04/06/2016 02:05:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloPrecios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloPrecios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloRecargos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloRecargos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[RecargoId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloRecargos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Articulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticuloTemporadas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloTemporadas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[TemporadaId] [int] NOT NULL,
	[Liquidacion] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ArticuloTemporadas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Atributos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atributos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[PadreId] [int] NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Atributos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AusenciaUsuarios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AusenciaUsuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[MotivoId] [int] NOT NULL,
	[Justificacion] [bit] NOT NULL,
	[Certificado] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AusenciaUsuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[CUIT] [nvarchar](max) NULL,
	[CuentaContableId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Bancos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Beneficiarios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[ImputacionId] [int] NOT NULL,
	[Prefijo] [bit] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Beneficiarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bonificaciones]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Bonificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BonificacionRecargo]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonificacionRecargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacturaId] [int] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.BonificacionRecargo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaAtributo]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaAtributo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaTalleId] [int] NOT NULL,
	[TalleId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.CategoriaAtributo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaTalles]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaTalles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.CategoriaTalles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChequePagos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChequePagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BancoId] [int] NOT NULL,
	[NroCheque] [nvarchar](max) NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ChequePagos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClienteBancos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteBancos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[BancoId] [int] NOT NULL,
	[NroCuenta] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ClienteBancos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClienteMails]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteMails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Titular] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ClienteMails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[RazonSocial] [nvarchar](max) NULL,
	[Responsable] [nvarchar](max) NULL,
	[DomicilioFiscal] [nvarchar](max) NULL,
	[DireccionEnvio] [nvarchar](max) NULL,
	[CodigoPostal] [nvarchar](max) NULL,
	[LocalidadId] [int] NOT NULL,
	[ProvinciaId] [int] NOT NULL,
	[CondicionIVAId] [int] NOT NULL,
	[EsquemaId] [int] NOT NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[NroDocumento] [nvarchar](max) NULL,
	[CondicionIIBBId] [int] NOT NULL,
	[NroIIBB] [nvarchar](max) NULL,
	[TipoClienteId] [int] NOT NULL,
	[LimiteCredito] [decimal](18, 2) NOT NULL,
	[LimiteCheques] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClienteTelefonos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteTelefonos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Titular] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ClienteTelefonos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClienteTransportes]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteTransportes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[TransporteId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ClienteTransportes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colores]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[InsumoId] [int] NOT NULL,
	[TemporadaId] [int] NOT NULL,
	[Observacion] [nvarchar](max) NULL,
	[Foto] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Colores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComprobanteImpuestos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobanteImpuestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComprobanteId] [int] NOT NULL,
	[ImpuestoId] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ComprobanteImpuestos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comprobantes]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[TipoId] [int] NOT NULL,
	[Sucursal] [nvarchar](max) NULL,
	[NroFactura] [nvarchar](max) NULL,
	[ProveedorId] [int] NOT NULL,
	[FechaFactura] [datetime] NOT NULL,
	[FechaContable] [datetime] NOT NULL,
	[NetoGravado21] [decimal](18, 2) NOT NULL,
	[IVA21] [decimal](18, 2) NOT NULL,
	[NetoGravado27] [decimal](18, 2) NOT NULL,
	[IVA27] [decimal](18, 2) NOT NULL,
	[NetoGravado105] [decimal](18, 2) NOT NULL,
	[IVA105] [decimal](18, 2) NOT NULL,
	[Impuestos] [bit] NOT NULL,
	[NoGrabado] [bit] NOT NULL,
	[CodigoRetencionId] [int] NOT NULL,
	[CodigoAutorizacionId] [int] NOT NULL,
	[NroAutorizacion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Comprobantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CondicionesIIBB]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesIIBB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.CondicionesIIBB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CondicionesIVA]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionesIVA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.CondicionesIVA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[RubroId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Cuentas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cuotas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuotas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Cuotas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[EsBeneficio] [bit] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Descuentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DescuentoSucursalDetalles]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentoSucursalDetalles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DescuentoSucursalId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.DescuentoSucursalDetalles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DescuentoSucursales]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentoSucursales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DescuentoId] [int] NOT NULL,
	[Obligatorio] [bit] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[TopeDescuento] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.DescuentoSucursales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DestinosOrigen]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestinosOrigen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.DestinosOrigen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalles]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EsquemaId] [int] NOT NULL,
	[ProveedorId] [int] NOT NULL,
	[TemporadaCodigoDesde] [nvarchar](max) NULL,
	[TemporadaCodigoHasta] [nvarchar](max) NULL,
	[ArticuloCodigoDesde] [nvarchar](max) NULL,
	[ArticuloCodigoHasta] [nvarchar](max) NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[EsquemaPrecio_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Detalles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dias]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Dias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EsquemaCuotas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsquemaCuotas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[MontoMinimo] [decimal](18, 2) NOT NULL,
	[MontoMaximo] [decimal](18, 2) NOT NULL,
	[Principal] [bit] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.EsquemaCuotas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EsquemaPrecios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsquemaPrecios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.EsquemaPrecios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstadoArticulos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoArticulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.EstadoArticulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FacturaDetalle]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacturaId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.FacturaDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[ComprobanteId] [int] NOT NULL,
	[NroFactura] [nvarchar](max) NULL,
	[VendedorId] [int] NOT NULL,
	[BonificacionRecargoId] [int] NOT NULL,
	[FormaPagoId] [int] NOT NULL,
	[TarjetaPagoId] [int] NOT NULL,
	[ChequePagoId] [int] NOT NULL,
	[NotaDebitoId] [int] NOT NULL,
	[NotaCreditoId] [int] NOT NULL,
	[IVA] [decimal](18, 2) NOT NULL,
	[IIBB] [decimal](18, 2) NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Facturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feriados]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feriados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Feriados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormasPago]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.FormasPago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Impresoras]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impresoras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Puerto] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Impresoras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impuestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Impuestos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImpuestoServicios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpuestoServicios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[BeneficiarioId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[CodigoTransaccion] [nvarchar](max) NULL,
	[ObservacionTransaccion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ImpuestoServicios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InsumoAtributos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumoAtributos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InsumoId] [int] NOT NULL,
	[AtributoId] [int] NOT NULL,
	[PadreId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.InsumoAtributos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InsumoPrecios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumoPrecios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InsumoId] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.InsumoPrecios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Insumos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insumos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[EsMaterial] [bit] NOT NULL,
	[UnidadMedidaId] [int] NOT NULL,
	[StockMinimo] [int] NOT NULL,
	[ProveedorId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[Foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Insumos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[DiferenciaStock] [int] NOT NULL,
	[DiferenciaCosto] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Inventarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JaulaArticulos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JaulaArticulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JaulaId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.JaulaArticulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jaulas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jaulas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NroJaula] [nvarchar](max) NULL,
	[DestinoOrigenId] [int] NOT NULL,
	[CodigoDestinoOrigen] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Jaulas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeyendasCodigoBarras]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeyendasCodigoBarras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[DescripcionLinea1] [nvarchar](max) NULL,
	[DescripcionLinea2] [nvarchar](max) NULL,
	[DescripcionLinea3] [nvarchar](max) NULL,
	[ProveedorId] [int] NOT NULL,
	[ArticuloCodigoDesde] [int] NOT NULL,
	[ArticuloCodigoHasta] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.LeyendasCodigoBarras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[ProvinciaId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Localidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Motivos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motivos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[TipoMotivoId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Motivos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdenesPago]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenesPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [nvarchar](max) NULL,
	[ProveedorId] [int] NOT NULL,
	[ComprobanteId] [int] NOT NULL,
	[RetencionId] [int] NOT NULL,
	[FormaPagoId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.OrdenesPago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paises]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Paises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Parametros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PedidosArticulo]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosArticulo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PedidoProveedorId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PedidosArticulo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PedidosProveedor]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosProveedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TemporadaId] [int] NOT NULL,
	[ProveedorId] [int] NOT NULL,
	[FechaInicial] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PedidosProveedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Precintos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precintos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[SucursalEnvioId] [int] NOT NULL,
	[SucursalRecibidoId] [int] NOT NULL,
	[FechaEnvio] [datetime] NOT NULL,
	[FechaRecibido] [datetime] NOT NULL,
	[EstadoPrecinto] [int] NOT NULL,
	[Color] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Precintos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PromoBeneficios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromoBeneficios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EsquemaCuotaId] [int] NOT NULL,
	[Promo] [bit] NOT NULL,
	[Beneficio] [bit] NOT NULL,
	[CuotaId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PromoBeneficios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PromocionTarjetas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromocionTarjetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BancoId] [int] NOT NULL,
	[TarjetaBancariaId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[PorcentajeEmpresa] [decimal](18, 2) NOT NULL,
	[PorcentajeBanco] [decimal](18, 2) NOT NULL,
	[SucursalId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PromocionTarjetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_dbo.Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[PaisId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Provincias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recargos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recargos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Recargos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegaloArticuloCompras]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegaloArticuloCompras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegaloId] [int] NULL,
	[ArticuloId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.RegaloArticuloCompras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regalos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regalos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NULL,
	[FechaDesde] [datetime] NULL,
	[FechaHasta] [datetime] NULL,
	[PrecioDesde] [decimal](18, 2) NULL,
	[PrecioHasta] [decimal](18, 2) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Regalos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RemitoArticulos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitoArticulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RemitoId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.RemitoArticulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remitos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remitos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalId] [int] NOT NULL,
	[PuntoVentaId] [int] NOT NULL,
	[NroFactura] [nvarchar](max) NULL,
	[MotivoId] [int] NOT NULL,
	[Observacion] [nvarchar](max) NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[DestinoOrigenId] [int] NOT NULL,
	[CodigoDestinoOrigen] [nvarchar](max) NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Remitos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Retenciones]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retenciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[MinimoNoImponible] [decimal](18, 2) NOT NULL,
	[alicuota] [decimal](18, 2) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Retenciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SucursalArticuloEstado]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalArticuloEstado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalArticuloId] [int] NOT NULL,
	[EstadoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[EstadoArticulo_Id] [int] NULL,
 CONSTRAINT [PK_dbo.SucursalArticuloEstado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SucursalArticulos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalArticulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[Remito_Id] [int] NULL,
 CONSTRAINT [PK_dbo.SucursalArticulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SucursalArticuloVidriera]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalArticuloVidriera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalArticuloId] [int] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.SucursalArticuloVidriera] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[PercibeIIBB] [bit] NOT NULL,
	[InventarioId] [int] NOT NULL,
	[PaisId] [int] NOT NULL,
	[ProvinciaId] [int] NOT NULL,
	[LocalidadId] [int] NOT NULL,
	[ImpresoraId] [int] NOT NULL,
	[TipoSucursalId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Sucursales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SucursalPuntoVenta]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalPuntoVenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SucursalId] [int] NOT NULL,
	[NroPuntoVenta] [int] NOT NULL,
	[TipoFacturaId] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
	[Remito_Id] [int] NULL,
 CONSTRAINT [PK_dbo.SucursalPuntoVenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Talles]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Talles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TarjetaPagos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetaPagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacturaId] [int] NOT NULL,
	[TipoTarjetaId] [int] NOT NULL,
	[Bin] [nvarchar](max) NULL,
	[Lote] [nvarchar](max) NULL,
	[Ticket] [nvarchar](max) NULL,
	[MonedaId] [int] NOT NULL,
	[Importe] [decimal](18, 2) NOT NULL,
	[CantidadCuotas] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TarjetaPagos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TarjetaRegalos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetaRegalos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Numero] [nvarchar](max) NULL,
	[SaldoInicial] [decimal](18, 2) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[CodigoVerificador] [nvarchar](max) NULL,
	[Observacion] [nvarchar](max) NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TarjetaRegalos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TarjetasBancarias]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetasBancarias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[BancoId] [int] NOT NULL,
	[CodigoAlternativo] [nvarchar](max) NULL,
	[TipoTarjetaId] [int] NOT NULL,
	[CategoriaTarjetaId] [int] NOT NULL,
	[EsBeneficio] [bit] NOT NULL,
	[Bin] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TarjetasBancarias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TarjetasDetalle]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetasDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TarjetaBancariaId] [int] NOT NULL,
	[CuotaId] [int] NOT NULL,
	[Impuesto] [decimal](18, 2) NOT NULL,
	[PagoCantidadDiasPromo] [int] NOT NULL,
	[PagoCantidadDiasNoPromo] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TarjetasDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Temporadas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoClientes]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoClientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoClientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumentos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoDocumentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoFacturas]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFacturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Tipo] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoFacturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoMotivos]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMotivos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoMotivos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoSucursales]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSucursales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoSucursales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoTarjeta]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTarjeta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.TipoTarjeta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transportes]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Transportes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnidadesMedida]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadesMedida](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UnidadesMedida] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 04/06/2016 02:05:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](20) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Vendedor] [bit] NOT NULL,
	[RequiereAutorizacion] [bit] NOT NULL,
	[CantidadFirmantes] [int] NOT NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono1] [nvarchar](max) NULL,
	[Telefono2] [nvarchar](max) NULL,
	[NombreContacto1] [nvarchar](max) NULL,
	[ParentescoContacto1] [nvarchar](max) NULL,
	[TelefonoContacto1] [nvarchar](max) NULL,
	[NombreContacto2] [nvarchar](max) NULL,
	[ParentescoContacto2] [nvarchar](max) NULL,
	[TelefonoContacto2] [nvarchar](max) NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[NroDocumento] [nvarchar](max) NULL,
	[SucursalId] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Legajo] [nvarchar](max) NULL,
	[Foto] [nvarchar](max) NULL,
	[HuellaDigital] [nvarchar](max) NULL,
	[Contraseña] [nvarchar](max) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[UsuarioAlta] [nvarchar](256) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](256) NULL,
	[FechaBaja] [datetime] NULL,
	[UsuarioBaja] [nvarchar](256) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[UsuarioAutorizacion] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[AperturaCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AperturaCierre_dbo.SucursalPuntoVenta_SucursalPuntoVentaId] FOREIGN KEY([SucursalPuntoVentaId])
REFERENCES [dbo].[SucursalPuntoVenta] ([Id])
GO
ALTER TABLE [dbo].[AperturaCierre] CHECK CONSTRAINT [FK_dbo.AperturaCierre_dbo.SucursalPuntoVenta_SucursalPuntoVentaId]
GO
ALTER TABLE [dbo].[ArticuloAtributos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloAtributos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloAtributos] CHECK CONSTRAINT [FK_dbo.ArticuloAtributos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloBonificaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloBonificaciones_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloBonificaciones] CHECK CONSTRAINT [FK_dbo.ArticuloBonificaciones_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloColores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloColores_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloColores] CHECK CONSTRAINT [FK_dbo.ArticuloColores_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloColores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloColores_dbo.Colores_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colores] ([Id])
GO
ALTER TABLE [dbo].[ArticuloColores] CHECK CONSTRAINT [FK_dbo.ArticuloColores_dbo.Colores_ColorId]
GO
ALTER TABLE [dbo].[ArticuloCostos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloCostos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloCostos] CHECK CONSTRAINT [FK_dbo.ArticuloCostos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloInsumos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloInsumos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloInsumos] CHECK CONSTRAINT [FK_dbo.ArticuloInsumos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloOferta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloOferta_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloOferta] CHECK CONSTRAINT [FK_dbo.ArticuloOferta_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloPrecios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloPrecios_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloPrecios] CHECK CONSTRAINT [FK_dbo.ArticuloPrecios_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[ArticuloRecargos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloRecargos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloRecargos] CHECK CONSTRAINT [FK_dbo.ArticuloRecargos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Articulos_dbo.Articulos_PadreId] FOREIGN KEY([PadreId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_dbo.Articulos_dbo.Articulos_PadreId]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Articulos_dbo.CategoriaTalles_CategoriaTalleId] FOREIGN KEY([CategoriaTalleId])
REFERENCES [dbo].[CategoriaTalles] ([Id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_dbo.Articulos_dbo.CategoriaTalles_CategoriaTalleId]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Articulos_dbo.Proveedores_ProveedorId] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_dbo.Articulos_dbo.Proveedores_ProveedorId]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Articulos_dbo.Talles_TalleId] FOREIGN KEY([TalleId])
REFERENCES [dbo].[Talles] ([Id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_dbo.Articulos_dbo.Talles_TalleId]
GO
ALTER TABLE [dbo].[ArticuloTemporadas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloTemporadas_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[ArticuloTemporadas] CHECK CONSTRAINT [FK_dbo.ArticuloTemporadas_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[Atributos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Atributos_dbo.Articulos_PadreId] FOREIGN KEY([PadreId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[Atributos] CHECK CONSTRAINT [FK_dbo.Atributos_dbo.Articulos_PadreId]
GO
ALTER TABLE [dbo].[AusenciaUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AusenciaUsuarios_dbo.Motivos_MotivoId] FOREIGN KEY([MotivoId])
REFERENCES [dbo].[Motivos] ([Id])
GO
ALTER TABLE [dbo].[AusenciaUsuarios] CHECK CONSTRAINT [FK_dbo.AusenciaUsuarios_dbo.Motivos_MotivoId]
GO
ALTER TABLE [dbo].[AusenciaUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AusenciaUsuarios_dbo.Usuarios_UsuarioId] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[AusenciaUsuarios] CHECK CONSTRAINT [FK_dbo.AusenciaUsuarios_dbo.Usuarios_UsuarioId]
GO
ALTER TABLE [dbo].[CategoriaAtributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoriaAtributo_dbo.CategoriaTalles_CategoriaTalleId] FOREIGN KEY([CategoriaTalleId])
REFERENCES [dbo].[CategoriaTalles] ([Id])
GO
ALTER TABLE [dbo].[CategoriaAtributo] CHECK CONSTRAINT [FK_dbo.CategoriaAtributo_dbo.CategoriaTalles_CategoriaTalleId]
GO
ALTER TABLE [dbo].[CategoriaAtributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoriaAtributo_dbo.Talles_TalleId] FOREIGN KEY([TalleId])
REFERENCES [dbo].[Talles] ([Id])
GO
ALTER TABLE [dbo].[CategoriaAtributo] CHECK CONSTRAINT [FK_dbo.CategoriaAtributo_dbo.Talles_TalleId]
GO
ALTER TABLE [dbo].[ChequePagos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ChequePagos_dbo.Bancos_BancoId] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Bancos] ([Id])
GO
ALTER TABLE [dbo].[ChequePagos] CHECK CONSTRAINT [FK_dbo.ChequePagos_dbo.Bancos_BancoId]
GO
ALTER TABLE [dbo].[ClienteBancos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteBancos_dbo.Bancos_BancoId] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Bancos] ([Id])
GO
ALTER TABLE [dbo].[ClienteBancos] CHECK CONSTRAINT [FK_dbo.ClienteBancos_dbo.Bancos_BancoId]
GO
ALTER TABLE [dbo].[ClienteBancos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteBancos_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClienteBancos] CHECK CONSTRAINT [FK_dbo.ClienteBancos_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[ClienteMails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteMails_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClienteMails] CHECK CONSTRAINT [FK_dbo.ClienteMails_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.CondicionesIIBB_CondicionIIBBId] FOREIGN KEY([CondicionIIBBId])
REFERENCES [dbo].[CondicionesIIBB] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.CondicionesIIBB_CondicionIIBBId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.CondicionesIVA_CondicionIVAId] FOREIGN KEY([CondicionIVAId])
REFERENCES [dbo].[CondicionesIVA] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.CondicionesIVA_CondicionIVAId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.Localidades_LocalidadId] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.Localidades_LocalidadId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.Provincias_ProvinciaId] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.Provincias_ProvinciaId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.TipoClientes_TipoClienteId] FOREIGN KEY([TipoClienteId])
REFERENCES [dbo].[TipoClientes] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.TipoClientes_TipoClienteId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clientes_dbo.TipoDocumentos_TipoDocumentoId] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumentos] ([Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_dbo.Clientes_dbo.TipoDocumentos_TipoDocumentoId]
GO
ALTER TABLE [dbo].[ClienteTelefonos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteTelefonos_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClienteTelefonos] CHECK CONSTRAINT [FK_dbo.ClienteTelefonos_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[ClienteTransportes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteTransportes_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ClienteTransportes] CHECK CONSTRAINT [FK_dbo.ClienteTransportes_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[ClienteTransportes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClienteTransportes_dbo.Transportes_TransporteId] FOREIGN KEY([TransporteId])
REFERENCES [dbo].[Transportes] ([Id])
GO
ALTER TABLE [dbo].[ClienteTransportes] CHECK CONSTRAINT [FK_dbo.ClienteTransportes_dbo.Transportes_TransporteId]
GO
ALTER TABLE [dbo].[Colores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Colores_dbo.Insumos_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumos] ([Id])
GO
ALTER TABLE [dbo].[Colores] CHECK CONSTRAINT [FK_dbo.Colores_dbo.Insumos_InsumoId]
GO
ALTER TABLE [dbo].[Colores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Colores_dbo.Temporadas_TemporadaId] FOREIGN KEY([TemporadaId])
REFERENCES [dbo].[Temporadas] ([Id])
GO
ALTER TABLE [dbo].[Colores] CHECK CONSTRAINT [FK_dbo.Colores_dbo.Temporadas_TemporadaId]
GO
ALTER TABLE [dbo].[ComprobanteImpuestos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComprobanteImpuestos_dbo.Comprobantes_ComprobanteId] FOREIGN KEY([ComprobanteId])
REFERENCES [dbo].[Comprobantes] ([Id])
GO
ALTER TABLE [dbo].[ComprobanteImpuestos] CHECK CONSTRAINT [FK_dbo.ComprobanteImpuestos_dbo.Comprobantes_ComprobanteId]
GO
ALTER TABLE [dbo].[ComprobanteImpuestos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComprobanteImpuestos_dbo.Impuestos_ImpuestoId] FOREIGN KEY([ImpuestoId])
REFERENCES [dbo].[Impuestos] ([Id])
GO
ALTER TABLE [dbo].[ComprobanteImpuestos] CHECK CONSTRAINT [FK_dbo.ComprobanteImpuestos_dbo.Impuestos_ImpuestoId]
GO
ALTER TABLE [dbo].[DescuentoSucursalDetalles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DescuentoSucursalDetalles_dbo.DescuentoSucursales_DescuentoSucursalId] FOREIGN KEY([DescuentoSucursalId])
REFERENCES [dbo].[DescuentoSucursales] ([Id])
GO
ALTER TABLE [dbo].[DescuentoSucursalDetalles] CHECK CONSTRAINT [FK_dbo.DescuentoSucursalDetalles_dbo.DescuentoSucursales_DescuentoSucursalId]
GO
ALTER TABLE [dbo].[DescuentoSucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DescuentoSucursales_dbo.Descuentos_DescuentoId] FOREIGN KEY([DescuentoId])
REFERENCES [dbo].[Descuentos] ([Id])
GO
ALTER TABLE [dbo].[DescuentoSucursales] CHECK CONSTRAINT [FK_dbo.DescuentoSucursales_dbo.Descuentos_DescuentoId]
GO
ALTER TABLE [dbo].[Detalles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Detalles_dbo.EsquemaPrecios_EsquemaPrecio_Id] FOREIGN KEY([EsquemaPrecio_Id])
REFERENCES [dbo].[EsquemaPrecios] ([Id])
GO
ALTER TABLE [dbo].[Detalles] CHECK CONSTRAINT [FK_dbo.Detalles_dbo.EsquemaPrecios_EsquemaPrecio_Id]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FacturaDetalle_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_dbo.FacturaDetalle_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FacturaDetalle_dbo.Facturas_FacturaId] FOREIGN KEY([FacturaId])
REFERENCES [dbo].[Facturas] ([Id])
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_dbo.FacturaDetalle_dbo.Facturas_FacturaId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.BonificacionRecargo_BonificacionRecargoId] FOREIGN KEY([BonificacionRecargoId])
REFERENCES [dbo].[BonificacionRecargo] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.BonificacionRecargo_BonificacionRecargoId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.ChequePagos_ChequePagoId] FOREIGN KEY([ChequePagoId])
REFERENCES [dbo].[ChequePagos] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.ChequePagos_ChequePagoId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.Comprobantes_ComprobanteId] FOREIGN KEY([ComprobanteId])
REFERENCES [dbo].[Comprobantes] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.Comprobantes_ComprobanteId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.FormasPago_FormaPagoId] FOREIGN KEY([FormaPagoId])
REFERENCES [dbo].[FormasPago] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.FormasPago_FormaPagoId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.TarjetaPagos_TarjetaPagoId] FOREIGN KEY([TarjetaPagoId])
REFERENCES [dbo].[TarjetaPagos] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.TarjetaPagos_TarjetaPagoId]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Facturas_dbo.Usuarios_VendedorId] FOREIGN KEY([VendedorId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_dbo.Facturas_dbo.Usuarios_VendedorId]
GO
ALTER TABLE [dbo].[ImpuestoServicios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImpuestoServicios_dbo.Beneficiarios_BeneficiarioId] FOREIGN KEY([BeneficiarioId])
REFERENCES [dbo].[Beneficiarios] ([Id])
GO
ALTER TABLE [dbo].[ImpuestoServicios] CHECK CONSTRAINT [FK_dbo.ImpuestoServicios_dbo.Beneficiarios_BeneficiarioId]
GO
ALTER TABLE [dbo].[ImpuestoServicios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImpuestoServicios_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[ImpuestoServicios] CHECK CONSTRAINT [FK_dbo.ImpuestoServicios_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[InsumoAtributos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Atributos_AtributoId] FOREIGN KEY([AtributoId])
REFERENCES [dbo].[Atributos] ([Id])
GO
ALTER TABLE [dbo].[InsumoAtributos] CHECK CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Atributos_AtributoId]
GO
ALTER TABLE [dbo].[InsumoAtributos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Atributos_PadreId] FOREIGN KEY([PadreId])
REFERENCES [dbo].[Atributos] ([Id])
GO
ALTER TABLE [dbo].[InsumoAtributos] CHECK CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Atributos_PadreId]
GO
ALTER TABLE [dbo].[InsumoAtributos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Insumos_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumos] ([Id])
GO
ALTER TABLE [dbo].[InsumoAtributos] CHECK CONSTRAINT [FK_dbo.InsumoAtributos_dbo.Insumos_InsumoId]
GO
ALTER TABLE [dbo].[InsumoPrecios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InsumoPrecios_dbo.Insumos_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumos] ([Id])
GO
ALTER TABLE [dbo].[InsumoPrecios] CHECK CONSTRAINT [FK_dbo.InsumoPrecios_dbo.Insumos_InsumoId]
GO
ALTER TABLE [dbo].[Insumos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Insumos_dbo.Proveedores_ProveedorId] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[Insumos] CHECK CONSTRAINT [FK_dbo.Insumos_dbo.Proveedores_ProveedorId]
GO
ALTER TABLE [dbo].[Insumos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Insumos_dbo.UnidadesMedida_UnidadMedidaId] FOREIGN KEY([UnidadMedidaId])
REFERENCES [dbo].[UnidadesMedida] ([Id])
GO
ALTER TABLE [dbo].[Insumos] CHECK CONSTRAINT [FK_dbo.Insumos_dbo.UnidadesMedida_UnidadMedidaId]
GO
ALTER TABLE [dbo].[JaulaArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JaulaArticulos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[JaulaArticulos] CHECK CONSTRAINT [FK_dbo.JaulaArticulos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[JaulaArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JaulaArticulos_dbo.Jaulas_JaulaId] FOREIGN KEY([JaulaId])
REFERENCES [dbo].[Jaulas] ([Id])
GO
ALTER TABLE [dbo].[JaulaArticulos] CHECK CONSTRAINT [FK_dbo.JaulaArticulos_dbo.Jaulas_JaulaId]
GO
ALTER TABLE [dbo].[Jaulas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Jaulas_dbo.DestinosOrigen_DestinoOrigenId] FOREIGN KEY([DestinoOrigenId])
REFERENCES [dbo].[DestinosOrigen] ([Id])
GO
ALTER TABLE [dbo].[Jaulas] CHECK CONSTRAINT [FK_dbo.Jaulas_dbo.DestinosOrigen_DestinoOrigenId]
GO
ALTER TABLE [dbo].[LeyendasCodigoBarras]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LeyendasCodigoBarras_dbo.Proveedores_ProveedorId] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[LeyendasCodigoBarras] CHECK CONSTRAINT [FK_dbo.LeyendasCodigoBarras_dbo.Proveedores_ProveedorId]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Localidades_dbo.Provincias_ProvinciaId] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_dbo.Localidades_dbo.Provincias_ProvinciaId]
GO
ALTER TABLE [dbo].[Motivos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Motivos_dbo.TipoMotivos_TipoMotivoId] FOREIGN KEY([TipoMotivoId])
REFERENCES [dbo].[TipoMotivos] ([Id])
GO
ALTER TABLE [dbo].[Motivos] CHECK CONSTRAINT [FK_dbo.Motivos_dbo.TipoMotivos_TipoMotivoId]
GO
ALTER TABLE [dbo].[OrdenesPago]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenesPago_dbo.Comprobantes_ComprobanteId] FOREIGN KEY([ComprobanteId])
REFERENCES [dbo].[Comprobantes] ([Id])
GO
ALTER TABLE [dbo].[OrdenesPago] CHECK CONSTRAINT [FK_dbo.OrdenesPago_dbo.Comprobantes_ComprobanteId]
GO
ALTER TABLE [dbo].[OrdenesPago]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenesPago_dbo.FormasPago_FormaPagoId] FOREIGN KEY([FormaPagoId])
REFERENCES [dbo].[FormasPago] ([Id])
GO
ALTER TABLE [dbo].[OrdenesPago] CHECK CONSTRAINT [FK_dbo.OrdenesPago_dbo.FormasPago_FormaPagoId]
GO
ALTER TABLE [dbo].[OrdenesPago]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenesPago_dbo.Proveedores_ProveedorId] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[OrdenesPago] CHECK CONSTRAINT [FK_dbo.OrdenesPago_dbo.Proveedores_ProveedorId]
GO
ALTER TABLE [dbo].[OrdenesPago]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenesPago_dbo.Retenciones_RetencionId] FOREIGN KEY([RetencionId])
REFERENCES [dbo].[Retenciones] ([Id])
GO
ALTER TABLE [dbo].[OrdenesPago] CHECK CONSTRAINT [FK_dbo.OrdenesPago_dbo.Retenciones_RetencionId]
GO
ALTER TABLE [dbo].[OrdenesPago]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenesPago_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[OrdenesPago] CHECK CONSTRAINT [FK_dbo.OrdenesPago_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[PedidosArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidosArticulo_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[PedidosArticulo] CHECK CONSTRAINT [FK_dbo.PedidosArticulo_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[PedidosArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidosArticulo_dbo.PedidosProveedor_PedidoProveedorId] FOREIGN KEY([PedidoProveedorId])
REFERENCES [dbo].[PedidosProveedor] ([Id])
GO
ALTER TABLE [dbo].[PedidosArticulo] CHECK CONSTRAINT [FK_dbo.PedidosArticulo_dbo.PedidosProveedor_PedidoProveedorId]
GO
ALTER TABLE [dbo].[PedidosProveedor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidosProveedor_dbo.Proveedores_ProveedorId] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[PedidosProveedor] CHECK CONSTRAINT [FK_dbo.PedidosProveedor_dbo.Proveedores_ProveedorId]
GO
ALTER TABLE [dbo].[PedidosProveedor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidosProveedor_dbo.Temporadas_TemporadaId] FOREIGN KEY([TemporadaId])
REFERENCES [dbo].[Temporadas] ([Id])
GO
ALTER TABLE [dbo].[PedidosProveedor] CHECK CONSTRAINT [FK_dbo.PedidosProveedor_dbo.Temporadas_TemporadaId]
GO
ALTER TABLE [dbo].[PromoBeneficios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PromoBeneficios_dbo.Cuotas_CuotaId] FOREIGN KEY([CuotaId])
REFERENCES [dbo].[Cuotas] ([Id])
GO
ALTER TABLE [dbo].[PromoBeneficios] CHECK CONSTRAINT [FK_dbo.PromoBeneficios_dbo.Cuotas_CuotaId]
GO
ALTER TABLE [dbo].[PromoBeneficios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PromoBeneficios_dbo.EsquemaCuotas_EsquemaCuotaId] FOREIGN KEY([EsquemaCuotaId])
REFERENCES [dbo].[EsquemaCuotas] ([Id])
GO
ALTER TABLE [dbo].[PromoBeneficios] CHECK CONSTRAINT [FK_dbo.PromoBeneficios_dbo.EsquemaCuotas_EsquemaCuotaId]
GO
ALTER TABLE [dbo].[PromocionTarjetas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.Bancos_BancoId] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Bancos] ([Id])
GO
ALTER TABLE [dbo].[PromocionTarjetas] CHECK CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.Bancos_BancoId]
GO
ALTER TABLE [dbo].[PromocionTarjetas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[PromocionTarjetas] CHECK CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[PromocionTarjetas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.TarjetasBancarias_TarjetaBancariaId] FOREIGN KEY([TarjetaBancariaId])
REFERENCES [dbo].[TarjetasBancarias] ([Id])
GO
ALTER TABLE [dbo].[PromocionTarjetas] CHECK CONSTRAINT [FK_dbo.PromocionTarjetas_dbo.TarjetasBancarias_TarjetaBancariaId]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Proveedores_dbo.CondicionesIVA_CondicionIVAId] FOREIGN KEY([CondicionIVAId])
REFERENCES [dbo].[CondicionesIVA] ([Id])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_dbo.Proveedores_dbo.CondicionesIVA_CondicionIVAId]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Proveedores_dbo.Localidades_LocalidadId] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([Id])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_dbo.Proveedores_dbo.Localidades_LocalidadId]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Proveedores_dbo.Paises_PaisId] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([Id])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_dbo.Proveedores_dbo.Paises_PaisId]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Proveedores_dbo.Provincias_ProvinciaId] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_dbo.Proveedores_dbo.Provincias_ProvinciaId]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Provincias_dbo.Paises_PaisId] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([Id])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_dbo.Provincias_dbo.Paises_PaisId]
GO
ALTER TABLE [dbo].[RegaloArticuloCompras]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RegaloArticuloCompras_dbo.Regalos_RegaloId] FOREIGN KEY([RegaloId])
REFERENCES [dbo].[Regalos] ([Id])
GO
ALTER TABLE [dbo].[RegaloArticuloCompras] CHECK CONSTRAINT [FK_dbo.RegaloArticuloCompras_dbo.Regalos_RegaloId]
GO
ALTER TABLE [dbo].[Regalos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Regalos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[Regalos] CHECK CONSTRAINT [FK_dbo.Regalos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[RemitoArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoArticulos_dbo.Articulos_ArticuloId] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[RemitoArticulos] CHECK CONSTRAINT [FK_dbo.RemitoArticulos_dbo.Articulos_ArticuloId]
GO
ALTER TABLE [dbo].[RemitoArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoArticulos_dbo.Remitos_RemitoId] FOREIGN KEY([RemitoId])
REFERENCES [dbo].[Remitos] ([Id])
GO
ALTER TABLE [dbo].[RemitoArticulos] CHECK CONSTRAINT [FK_dbo.RemitoArticulos_dbo.Remitos_RemitoId]
GO
ALTER TABLE [dbo].[Remitos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remitos_dbo.DestinosOrigen_DestinoOrigenId] FOREIGN KEY([DestinoOrigenId])
REFERENCES [dbo].[DestinosOrigen] ([Id])
GO
ALTER TABLE [dbo].[Remitos] CHECK CONSTRAINT [FK_dbo.Remitos_dbo.DestinosOrigen_DestinoOrigenId]
GO
ALTER TABLE [dbo].[Remitos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remitos_dbo.Motivos_MotivoId] FOREIGN KEY([MotivoId])
REFERENCES [dbo].[Motivos] ([Id])
GO
ALTER TABLE [dbo].[Remitos] CHECK CONSTRAINT [FK_dbo.Remitos_dbo.Motivos_MotivoId]
GO
ALTER TABLE [dbo].[Remitos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remitos_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[Remitos] CHECK CONSTRAINT [FK_dbo.Remitos_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[Remitos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remitos_dbo.TipoDocumentos_TipoDocumentoId] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumentos] ([Id])
GO
ALTER TABLE [dbo].[Remitos] CHECK CONSTRAINT [FK_dbo.Remitos_dbo.TipoDocumentos_TipoDocumentoId]
GO
ALTER TABLE [dbo].[SucursalArticuloEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalArticuloEstado_dbo.EstadoArticulos_EstadoArticulo_Id] FOREIGN KEY([EstadoArticulo_Id])
REFERENCES [dbo].[EstadoArticulos] ([Id])
GO
ALTER TABLE [dbo].[SucursalArticuloEstado] CHECK CONSTRAINT [FK_dbo.SucursalArticuloEstado_dbo.EstadoArticulos_EstadoArticulo_Id]
GO
ALTER TABLE [dbo].[SucursalArticuloEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalArticuloEstado_dbo.SucursalArticulos_SucursalArticuloId] FOREIGN KEY([SucursalArticuloId])
REFERENCES [dbo].[SucursalArticulos] ([Id])
GO
ALTER TABLE [dbo].[SucursalArticuloEstado] CHECK CONSTRAINT [FK_dbo.SucursalArticuloEstado_dbo.SucursalArticulos_SucursalArticuloId]
GO
ALTER TABLE [dbo].[SucursalArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalArticulos_dbo.Remitos_Remito_Id] FOREIGN KEY([Remito_Id])
REFERENCES [dbo].[Remitos] ([Id])
GO
ALTER TABLE [dbo].[SucursalArticulos] CHECK CONSTRAINT [FK_dbo.SucursalArticulos_dbo.Remitos_Remito_Id]
GO
ALTER TABLE [dbo].[SucursalArticulos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalArticulos_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[SucursalArticulos] CHECK CONSTRAINT [FK_dbo.SucursalArticulos_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[SucursalArticuloVidriera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalArticuloVidriera_dbo.SucursalArticulos_SucursalArticuloId] FOREIGN KEY([SucursalArticuloId])
REFERENCES [dbo].[SucursalArticulos] ([Id])
GO
ALTER TABLE [dbo].[SucursalArticuloVidriera] CHECK CONSTRAINT [FK_dbo.SucursalArticuloVidriera_dbo.SucursalArticulos_SucursalArticuloId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.Impresoras_ImpresoraId] FOREIGN KEY([ImpresoraId])
REFERENCES [dbo].[Impresoras] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.Impresoras_ImpresoraId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.Inventarios_InventarioId] FOREIGN KEY([InventarioId])
REFERENCES [dbo].[Inventarios] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.Inventarios_InventarioId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.Localidades_LocalidadId] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.Localidades_LocalidadId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.Paises_PaisId] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.Paises_PaisId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.Provincias_ProvinciaId] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.Provincias_ProvinciaId]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sucursales_dbo.TipoSucursales_TipoSucursalId] FOREIGN KEY([TipoSucursalId])
REFERENCES [dbo].[TipoSucursales] ([Id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_dbo.Sucursales_dbo.TipoSucursales_TipoSucursalId]
GO
ALTER TABLE [dbo].[SucursalPuntoVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.Remitos_Remito_Id] FOREIGN KEY([Remito_Id])
REFERENCES [dbo].[Remitos] ([Id])
GO
ALTER TABLE [dbo].[SucursalPuntoVenta] CHECK CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.Remitos_Remito_Id]
GO
ALTER TABLE [dbo].[SucursalPuntoVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[SucursalPuntoVenta] CHECK CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[SucursalPuntoVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.TipoFacturas_TipoFacturaId] FOREIGN KEY([TipoFacturaId])
REFERENCES [dbo].[TipoFacturas] ([Id])
GO
ALTER TABLE [dbo].[SucursalPuntoVenta] CHECK CONSTRAINT [FK_dbo.SucursalPuntoVenta_dbo.TipoFacturas_TipoFacturaId]
GO
ALTER TABLE [dbo].[TarjetaRegalos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetaRegalos_dbo.Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[TarjetaRegalos] CHECK CONSTRAINT [FK_dbo.TarjetaRegalos_dbo.Clientes_ClienteId]
GO
ALTER TABLE [dbo].[TarjetaRegalos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetaRegalos_dbo.Sucursales_SucursalId] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO
ALTER TABLE [dbo].[TarjetaRegalos] CHECK CONSTRAINT [FK_dbo.TarjetaRegalos_dbo.Sucursales_SucursalId]
GO
ALTER TABLE [dbo].[TarjetasBancarias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.Bancos_BancoId] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Bancos] ([Id])
GO
ALTER TABLE [dbo].[TarjetasBancarias] CHECK CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.Bancos_BancoId]
GO
ALTER TABLE [dbo].[TarjetasBancarias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.Categorias_CategoriaTarjetaId] FOREIGN KEY([CategoriaTarjetaId])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[TarjetasBancarias] CHECK CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.Categorias_CategoriaTarjetaId]
GO
ALTER TABLE [dbo].[TarjetasBancarias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.TipoTarjeta_TipoTarjetaId] FOREIGN KEY([TipoTarjetaId])
REFERENCES [dbo].[TipoTarjeta] ([Id])
GO
ALTER TABLE [dbo].[TarjetasBancarias] CHECK CONSTRAINT [FK_dbo.TarjetasBancarias_dbo.TipoTarjeta_TipoTarjetaId]
GO
ALTER TABLE [dbo].[TarjetasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetasDetalle_dbo.Cuotas_CuotaId] FOREIGN KEY([CuotaId])
REFERENCES [dbo].[Cuotas] ([Id])
GO
ALTER TABLE [dbo].[TarjetasDetalle] CHECK CONSTRAINT [FK_dbo.TarjetasDetalle_dbo.Cuotas_CuotaId]
GO
ALTER TABLE [dbo].[TarjetasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarjetasDetalle_dbo.TarjetasBancarias_TarjetaBancariaId] FOREIGN KEY([TarjetaBancariaId])
REFERENCES [dbo].[TarjetasBancarias] ([Id])
GO
ALTER TABLE [dbo].[TarjetasDetalle] CHECK CONSTRAINT [FK_dbo.TarjetasDetalle_dbo.TarjetasBancarias_TarjetaBancariaId]
GO
