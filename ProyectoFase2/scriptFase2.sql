USE [master]
GO
/****** Object:  Database [QuetzalExpress]    Script Date: 23/06/2015 7:00:00 a. m. ******/
CREATE DATABASE [QuetzalExpress] ON  PRIMARY 
( NAME = N'QuetzalExpress', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QuetzalExpress.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuetzalExpress_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QuetzalExpress_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuetzalExpress] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuetzalExpress].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuetzalExpress] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuetzalExpress] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuetzalExpress] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuetzalExpress] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuetzalExpress] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuetzalExpress] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuetzalExpress] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuetzalExpress] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuetzalExpress] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuetzalExpress] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuetzalExpress] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuetzalExpress] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuetzalExpress] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuetzalExpress] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuetzalExpress] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuetzalExpress] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuetzalExpress] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuetzalExpress] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuetzalExpress] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuetzalExpress] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuetzalExpress] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuetzalExpress] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuetzalExpress] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuetzalExpress] SET RECOVERY FULL 
GO
ALTER DATABASE [QuetzalExpress] SET  MULTI_USER 
GO
ALTER DATABASE [QuetzalExpress] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuetzalExpress] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuetzalExpress', N'ON'
GO
USE [QuetzalExpress]
GO
/****** Object:  Table [dbo].[AsignacionSedeSucursal]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsignacionSedeSucursal](
	[IdAsigss] [varchar](50) NOT NULL,
	[IdSucurs] [varchar](50) NOT NULL,
	[IdSe] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AsignacionSedeSucursal] PRIMARY KEY CLUSTERED 
(
	[IdAsigss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AsignacionSucursalDepartamento]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsignacionSucursalDepartamento](
	[IdAsigsd] [varchar](50) NOT NULL,
	[IdEmple] [varchar](50) NOT NULL,
	[IdAdmin] [varchar](50) NOT NULL,
	[IdSucur] [varchar](50) NOT NULL,
	[IdDepto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AsignacionSucursalDepartamento] PRIMARY KEY CLUSTERED 
(
	[IdAsigsd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaImpuesto]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaImpuesto](
	[IdImpuesto] [int] NOT NULL,
	[NombreImpuesto] [varchar](50) NOT NULL,
	[Porcentaje] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCasilla] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Residencia] [varchar](50) NOT NULL,
	[NIT] [varchar](50) NULL,
	[TCredDeb] [int] NOT NULL,
	[DPI] [int] NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCasilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[IdDepartamento] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[TipoDepartamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Director]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Director](
	[IdDirector] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Sueldo] [float] NOT NULL,
	[Sucursal] [varchar](50) NOT NULL,
	[Departamento] [varchar](50) NOT NULL,
	[Telefono] [int] NULL,
	[Domicilio] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK__Empleado__CE6D8B9E43D61337] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado1]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado1](
	[IdEmpleado] [varchar](50) NOT NULL,
	[IdAdministrador] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Sueldo] [float] NOT NULL,
	[Domicilio] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Residencia] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [varchar](50) NOT NULL,
	[IdEmpleado] [varchar](50) NOT NULL,
	[IdRegis] [varchar](50) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Hora] [varchar](50) NOT NULL,
	[Descuento] [float] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Impuesto]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impuesto](
	[Nombre] [varchar](50) NOT NULL,
	[Porcentaje] [float] NOT NULL,
 CONSTRAINT [PK_Impuesto] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOTE]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOTE](
	[IdLote] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[IdSucursal] [varchar](50) NULL,
 CONSTRAINT [PK__LOTE__38C4EE904B7734FF] PRIMARY KEY CLUSTERED 
(
	[IdLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paquete](
	[IdPaquet] [int] NOT NULL,
	[IdImpues] [varchar](50) NOT NULL,
	[IdPedid] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[IdPaquet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[DescripcionCategoria] [varchar](50) NOT NULL,
	[IdCasi] [int] NOT NULL,
	[Peso] [float] NOT NULL,
	[Precio] [float] NOT NULL,
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[EstadoActual] [varchar](50) NULL,
	[IdLot] [int] NULL,
 CONSTRAINT [PK__Pedido__9D335DC32DE6D218] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido1]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido1](
	[DescripcionCategoria] [varchar](50) NOT NULL,
	[IdCasi] [int] NOT NULL,
	[Peso] [float] NOT NULL,
	[Precio] [float] NOT NULL,
	[IdPedido] [varchar](50) NULL,
	[EstadoActual] [varchar](50) NULL,
	[IdLot] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[IdSede] [varchar](50) NOT NULL,
	[NombreSede] [varchar](50) NOT NULL,
	[CodigoPais] [int] NOT NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[IdSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/06/2015 7:00:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[CapMax] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AsignacionSedeSucursal]  WITH CHECK ADD  CONSTRAINT [fk_asignacinSeSu_IdSe] FOREIGN KEY([IdSe])
REFERENCES [dbo].[Sede] ([IdSede])
GO
ALTER TABLE [dbo].[AsignacionSedeSucursal] CHECK CONSTRAINT [fk_asignacinSeSu_IdSe]
GO
ALTER TABLE [dbo].[AsignacionSedeSucursal]  WITH CHECK ADD  CONSTRAINT [fk_asignacinSeSu_IdSucurs] FOREIGN KEY([IdSucurs])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[AsignacionSedeSucursal] CHECK CONSTRAINT [fk_asignacinSeSu_IdSucurs]
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento]  WITH CHECK ADD  CONSTRAINT [fk_asignacinSuDe_IdDepto] FOREIGN KEY([IdDepto])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento] CHECK CONSTRAINT [fk_asignacinSuDe_IdDepto]
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento]  WITH CHECK ADD  CONSTRAINT [fk_asignacinSuDe_IdEmple] FOREIGN KEY([IdEmple])
REFERENCES [dbo].[Empleado1] ([IdEmpleado])
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento] CHECK CONSTRAINT [fk_asignacinSuDe_IdEmple]
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento]  WITH CHECK ADD  CONSTRAINT [fk_asignacinSuDe_IdSucur] FOREIGN KEY([IdSucur])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[AsignacionSucursalDepartamento] CHECK CONSTRAINT [fk_asignacinSuDe_IdSucur]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [fk_Factura_IdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado1] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [fk_Factura_IdEmpleado]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [fk_Ped_IdLo] FOREIGN KEY([IdLot])
REFERENCES [dbo].[LOTE] ([IdLote])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [fk_Ped_IdLo]
GO
ALTER TABLE [dbo].[Pedido]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidoo_IdCasi] FOREIGN KEY([IdCasi])
REFERENCES [dbo].[Cliente] ([IdCasilla])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [fk_pedidoo_IdCasi]
GO
USE [master]
GO
ALTER DATABASE [QuetzalExpress] SET  READ_WRITE 
GO
