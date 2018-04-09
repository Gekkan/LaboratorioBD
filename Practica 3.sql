USE [master]
GO
/****** Object:  Database [Practicas]    Script Date: 08/04/2018 17:05:50 ******/
CREATE DATABASE [Practicas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practicas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practicas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practicas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practicas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practicas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practicas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practicas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practicas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practicas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practicas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practicas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practicas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practicas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practicas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practicas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practicas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practicas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practicas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practicas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practicas] SET RECOVERY FULL 
GO
ALTER DATABASE [Practicas] SET  MULTI_USER 
GO
ALTER DATABASE [Practicas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practicas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practicas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practicas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practicas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practicas', N'ON'
GO
ALTER DATABASE [Practicas] SET QUERY_STORE = OFF
GO
USE [Practicas]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Practicas]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[id_Asiento] [uniqueidentifier] NOT NULL,
	[Zona] [nchar](10) NOT NULL,
	[NoAsiento] [int] NOT NULL,
 CONSTRAINT [PK_Asiento] PRIMARY KEY CLUSTERED 
(
	[id_Asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[id_Boleto] [uniqueidentifier] NOT NULL,
	[id_DVenta] [uniqueidentifier] NOT NULL,
	[Folio] [int] NOT NULL,
	[NoAsiento] [int] NOT NULL,
	[Zona] [int] NOT NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[id_Boleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[id_Camiones] [uniqueidentifier] NOT NULL,
	[CantidadCamiones] [int] NOT NULL,
	[Placas] [int] NOT NULL,
	[id_Chofer] [uniqueidentifier] NOT NULL,
	[NoCamion] [int] NOT NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[id_Camiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choferes]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choferes](
	[id_Choferes] [uniqueidentifier] NOT NULL,
	[id_Empleado] [uniqueidentifier] NOT NULL,
	[LicenciaAdquirida] [nchar](10) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Choferes] PRIMARY KEY CLUSTERED 
(
	[id_Choferes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_Cliente] [uniqueidentifier] NOT NULL,
	[id_Personas2] [uniqueidentifier] NOT NULL,
	[TipoCliente] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[id_DVenta] [uniqueidentifier] NOT NULL,
	[Precio] [money] NOT NULL,
	[Edad] [int] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[id_Boleto] [uniqueidentifier] NOT NULL,
	[Descuento1]  AS ([Precio]*(0.25)),
	[Descuento2]  AS ([Precio]*(0.10)),
 CONSTRAINT [PK_Detalle Venta] PRIMARY KEY CLUSTERED 
(
	[id_DVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [uniqueidentifier] NOT NULL,
	[id_Persona1] [uniqueidentifier] NOT NULL,
	[Tipo] [nchar](10) NOT NULL,
	[HEntrada] [time](7) NOT NULL,
	[HSalida] [time](7) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 08/04/2018 17:05:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[Id_Horarios] [uniqueidentifier] NOT NULL,
	[HSalida] [time](7) NOT NULL,
	[HEstimada] [time](7) NOT NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[Id_Horarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 08/04/2018 17:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id_Persona] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[APaterno] [nchar](10) NOT NULL,
	[AMaterno] [nchar](10) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Genero] [char](10) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 08/04/2018 17:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id_Venta] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Total] [money] NOT NULL,
	[Hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Asiento] FOREIGN KEY([id_Boleto])
REFERENCES [dbo].[Asiento] ([id_Asiento])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Asiento]
GO
ALTER TABLE [dbo].[Choferes]  WITH CHECK ADD  CONSTRAINT [FK_Choferes_Camiones] FOREIGN KEY([id_Choferes])
REFERENCES [dbo].[Camiones] ([id_Camiones])
GO
ALTER TABLE [dbo].[Choferes] CHECK CONSTRAINT [FK_Choferes_Camiones]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Choferes] FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Choferes] ([id_Choferes])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Choferes]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Detalle Venta] FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[DetalleVenta] ([id_DVenta])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Detalle Venta]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle Venta_Ventas] FOREIGN KEY([id_DVenta])
REFERENCES [dbo].[Ventas] ([Id_Venta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_Detalle Venta_Ventas]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Clientes] FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Clientes] ([id_Cliente])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Clientes]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Empleado] FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Empleado] ([id_Empleado])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Empleado]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Horarios] FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Horarios] ([Id_Horarios])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Horarios]
GO
USE [master]
GO
ALTER DATABASE [Practicas] SET  READ_WRITE 
GO
