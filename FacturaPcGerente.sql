USE [master]
GO
/****** Object:  Database [FacturaPcGerente]    Script Date: 26/9/2021 20:25:45 ******/
CREATE DATABASE [FacturaPcGerente]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FacturaPcGerente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FacturaPcGerente.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FacturaPcGerente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FacturaPcGerente_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FacturaPcGerente] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FacturaPcGerente].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FacturaPcGerente] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET ARITHABORT OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FacturaPcGerente] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FacturaPcGerente] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FacturaPcGerente] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FacturaPcGerente] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FacturaPcGerente] SET  MULTI_USER 
GO
ALTER DATABASE [FacturaPcGerente] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FacturaPcGerente] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FacturaPcGerente] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FacturaPcGerente] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FacturaPcGerente] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FacturaPcGerente] SET QUERY_STORE = OFF
GO
USE [FacturaPcGerente]
GO
/****** Object:  Table [dbo].[tbl_Detalle]    Script Date: 26/9/2021 20:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Detalle](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idFactura] [int] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Precio] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Detalle] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Factura]    Script Date: 26/9/2021 20:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Factura](
	[idFactura] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [varchar](50) NULL,
	[Cedula] [varchar](50) NULL,
	[FechaEmision] [date] NULL,
	[SubTotal] [decimal](18, 2) NULL,
	[Iva] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbl_Factura] PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Detalle] ON 

INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1, 1, N'laptop', 2, CAST(40.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (2, 13, NULL, 4, CAST(4.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (3, 13, NULL, 2, CAST(3.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1002, 1002, N'lenovo', 2, CAST(5.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1003, 1002, N'paleta', 2, CAST(7.00 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1004, 1003, N'vidal', 2, CAST(25.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1005, 1003, N'llantas', 2, CAST(2.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1006, 1004, N'papas', 2, CAST(2.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1007, 1004, N'laptop', 6, CAST(6.00 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1008, 1005, N'tht', 5, CAST(5.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1009, 1006, N'manzana', 7, CAST(4.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1010, 1006, N'pera', 5, CAST(2.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1011, 1007, N'mandarina', 4, CAST(2.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1012, 1007, N'fresa', 5, CAST(5.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1013, 1008, N'', 2, CAST(5.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1014, 1009, N'', 4, CAST(4.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1015, 1010, N'', 5, CAST(6.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1016, 1011, N'', 4, CAST(5.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1017, 1012, N'df', 3, CAST(3.00 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1018, 1013, N'carro', 1, CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1019, 1013, N'casa', 2, CAST(200.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1020, 1014, N'guitarra', 2, CAST(50.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Detalle] ([idDetalle], [idFactura], [NombreProducto], [Cantidad], [Precio], [Total]) VALUES (1021, 1015, N'we', 5, CAST(4.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbl_Detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Factura] ON 

INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1, N'Richard', N'0981203639', CAST(N'2021-12-12' AS Date), CAST(50.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (2, NULL, NULL, CAST(N'2021-09-23' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (3, N'richard', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (4, N'juan', N'09799620', CAST(N'2021-09-23' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (5, N'jose', N'123', CAST(N'2021-02-02' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (6, N'peres', N'145', CAST(N'2125-05-02' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (7, N'wre', N'09812063', CAST(N'2020-01-01' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (8, N'444', N'fg', CAST(N'1998-12-12' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (9, N'juanito', N'234', CAST(N'2021-12-20' AS Date), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (13, N'luis', N'0918457230', CAST(N'2020-03-02' AS Date), CAST(6.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1002, N'arturo', N'0979548120', CAST(N'2021-09-24' AS Date), CAST(4.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1003, N'melanie', N'1478520369', CAST(N'2021-09-25' AS Date), CAST(4.00 AS Decimal(18, 2)), CAST(0.48 AS Decimal(18, 2)), CAST(54.48 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1004, N'juanito', N'061548', CAST(N'1998-02-02' AS Date), CAST(40.00 AS Decimal(18, 2)), CAST(4.80 AS Decimal(18, 2)), CAST(44.80 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1005, N'trtr', N'0981', CAST(N'0202-02-02' AS Date), CAST(25.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1006, N'francisco', N'1245784512', CAST(N'1997-03-03' AS Date), CAST(38.00 AS Decimal(18, 2)), CAST(4.56 AS Decimal(18, 2)), CAST(42.56 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1007, N'rivas', N'7845', CAST(N'2023-01-01' AS Date), CAST(33.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1008, N'', N'', CAST(N'2020-02-02' AS Date), CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1009, N'', N'', CAST(N'0202-02-02' AS Date), CAST(16.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1010, N'castro', N'234', CAST(N'1212-12-12' AS Date), CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1011, N'wew', N'23', CAST(N'1997-10-10' AS Date), CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1012, N'er', N'35', CAST(N'2020-02-02' AS Date), CAST(9.00 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)), CAST(10.08 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1013, N'roxana', N'1748512536', CAST(N'2019-10-17' AS Date), CAST(900.00 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)), CAST(1008.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1014, N'Andres', N'09812052', CAST(N'2015-10-09' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)), CAST(112.00 AS Decimal(18, 2)))
INSERT [dbo].[tbl_Factura] ([idFactura], [NombreCliente], [Cedula], [FechaEmision], [SubTotal], [Iva], [Total]) VALUES (1015, N'ricardo', N'4342', CAST(N'0202-02-02' AS Date), CAST(20.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbl_Factura] OFF
GO
ALTER TABLE [dbo].[tbl_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura] FOREIGN KEY([idFactura])
REFERENCES [dbo].[tbl_Factura] ([idFactura])
GO
ALTER TABLE [dbo].[tbl_Detalle] CHECK CONSTRAINT [FK_DetalleFactura]
GO
USE [master]
GO
ALTER DATABASE [FacturaPcGerente] SET  READ_WRITE 
GO
