USE [master]
GO

/****** Object:  Database [DW_Albarran]    Script Date: 9/13/2023 4:45:14 PM ******/
CREATE DATABASE [DW_Albarran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DW_Albarran', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DW_Albarran.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DW_Albarran_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DW_Albarran_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_Albarran].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DW_Albarran] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DW_Albarran] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DW_Albarran] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DW_Albarran] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DW_Albarran] SET ARITHABORT OFF 
GO

ALTER DATABASE [DW_Albarran] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DW_Albarran] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DW_Albarran] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DW_Albarran] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DW_Albarran] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DW_Albarran] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DW_Albarran] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DW_Albarran] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DW_Albarran] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DW_Albarran] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DW_Albarran] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DW_Albarran] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DW_Albarran] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DW_Albarran] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DW_Albarran] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DW_Albarran] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DW_Albarran] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DW_Albarran] SET RECOVERY FULL 
GO

ALTER DATABASE [DW_Albarran] SET  MULTI_USER 
GO

ALTER DATABASE [DW_Albarran] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DW_Albarran] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DW_Albarran] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DW_Albarran] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DW_Albarran] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DW_Albarran] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [DW_Albarran] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DW_Albarran] SET  READ_WRITE 
GO


USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 9/13/2023 4:45:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CATEGORIA](
	[id_categoria] [int] NOT NULL,
	[categoria] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[CLIENTE]    Script Date: 9/13/2023 4:45:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTE](
	[id_cliente] [int] NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[appaterno] [nvarchar](255) NOT NULL,
	[apmaterno] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[COMUNA]    Script Date: 9/13/2023 4:45:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[COMUNA](
	[id_comuna] [int] NOT NULL,
	[comuna] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_COMUNA] PRIMARY KEY CLUSTERED 
(
	[id_comuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 9/13/2023 4:45:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPLEADO](
	[id_empleado] [int] NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 9/13/2023 4:46:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCTO](
	[id_producto] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_CATEGORIA] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[CATEGORIA] ([id_categoria])
GO

ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_CATEGORIA]
GO


USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 9/13/2023 4:46:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SUCURSAL](
	[id_sucursal] [int] NOT NULL,
	[id_comuna] [int] NOT NULL,
	[sucursal] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_SUCURSAL] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SUCURSAL]  WITH CHECK ADD  CONSTRAINT [FK_SUCURSAL_COMUNA] FOREIGN KEY([id_comuna])
REFERENCES [dbo].[COMUNA] ([id_comuna])
GO

ALTER TABLE [dbo].[SUCURSAL] CHECK CONSTRAINT [FK_SUCURSAL_COMUNA]
GO

USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[TIEMPO]    Script Date: 9/13/2023 4:46:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TIEMPO](
	[id_tiempo] [int] NOT NULL,
	[dia] [time](7) NOT NULL,
	[mes] [time](7) NOT NULL,
	[a�o] [time](7) NOT NULL,
 CONSTRAINT [PK_TIEMPO] PRIMARY KEY CLUSTERED 
(
	[id_tiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Albarran]
GO

/****** Object:  Table [dbo].[H_VENTAS]    Script Date: 9/13/2023 4:46:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[H_VENTAS](
	[id_cliente] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_tiempo] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[monto] [int] NOT NULL,
 CONSTRAINT [PK_H_VENTAS] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC,
	[id_empleado] ASC,
	[id_tiempo] ASC,
	[id_sucursal] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[H_VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_H_VENTAS_CLIENTE] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTE] ([id_cliente])
GO

ALTER TABLE [dbo].[H_VENTAS] CHECK CONSTRAINT [FK_H_VENTAS_CLIENTE]
GO

ALTER TABLE [dbo].[H_VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_H_VENTAS_EMPLEADO] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADO] ([id_empleado])
GO

ALTER TABLE [dbo].[H_VENTAS] CHECK CONSTRAINT [FK_H_VENTAS_EMPLEADO]
GO

ALTER TABLE [dbo].[H_VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_H_VENTAS_PRODUCTO] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTO] ([id_producto])
GO

ALTER TABLE [dbo].[H_VENTAS] CHECK CONSTRAINT [FK_H_VENTAS_PRODUCTO]
GO

ALTER TABLE [dbo].[H_VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_H_VENTAS_SUCURSAL] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[SUCURSAL] ([id_sucursal])
GO

ALTER TABLE [dbo].[H_VENTAS] CHECK CONSTRAINT [FK_H_VENTAS_SUCURSAL]
GO

ALTER TABLE [dbo].[H_VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_H_VENTAS_TIEMPO] FOREIGN KEY([id_tiempo])
REFERENCES [dbo].[TIEMPO] ([id_tiempo])
GO

ALTER TABLE [dbo].[H_VENTAS] CHECK CONSTRAINT [FK_H_VENTAS_TIEMPO]
GO

