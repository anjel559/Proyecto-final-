
/* Nombre: Miguel Angel Susaña. Matricula: 20-EIIN-1-100 Seccion: 0541 */
/* Nombre: Mairelin Feliz. Matricula: 20-EIIN-1-086 Seccion: 0541 */
/* Nombre: Maickol Jiménez. Matricula: 20-EIIN-1-084 Seccion: 0541 */

USE [master]
GO
/****** Object:  Database [Eyes Protection ]    Script Date: 18/08/2021 23:39:17 ******/
CREATE DATABASE [Eyes Protection ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Eyes Protection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Eyes Protection .mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Eyes Protection _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Eyes Protection _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Eyes Protection ] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Eyes Protection ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Eyes Protection ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Eyes Protection ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Eyes Protection ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Eyes Protection ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Eyes Protection ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Eyes Protection ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Eyes Protection ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Eyes Protection ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Eyes Protection ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Eyes Protection ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Eyes Protection ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Eyes Protection ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Eyes Protection ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Eyes Protection ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Eyes Protection ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Eyes Protection ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Eyes Protection ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Eyes Protection ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Eyes Protection ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Eyes Protection ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Eyes Protection ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Eyes Protection ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Eyes Protection ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Eyes Protection ] SET  MULTI_USER 
GO
ALTER DATABASE [Eyes Protection ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Eyes Protection ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Eyes Protection ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Eyes Protection ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Eyes Protection ] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Eyes Protection ]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 18/08/2021 23:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] NOT NULL,
	[Empresas] [nchar](50) NULL,
	[Cantidad de Pedidos de lentes] [nchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Datos de produccion]    Script Date: 18/08/2021 23:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos de produccion](
	[ID] [int] NOT NULL,
	[Produccion diaria] [int] NULL,
	[Produccion mensual] [int] NULL,
 CONSTRAINT [PK_Datos de produccion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Datos del negocio]    Script Date: 18/08/2021 23:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos del negocio](
	[ID] [int] NOT NULL,
	[Precio del lente] [int] NULL,
	[Ingreso mensual] [int] NULL,
	[Ingreso cuatrimestral] [int] NULL,
	[Ingresos anual] [int] NULL,
 CONSTRAINT [PK_Datos del negocio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/08/2021 23:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Posicion] [nchar](10) NULL,
	[Sueldo] [nchar](10) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partes del Producto]    Script Date: 18/08/2021 23:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partes del Producto](
	[ID] [int] NOT NULL,
	[Iten] [int] NULL,
	[Descripcion] [nchar](10) NULL,
	[Precio] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Partes del Producto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (1, N'Coca Cola                       coca cola         ', N'10000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (2, N'Cerveceria                                        ', N'15000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (3, N'Grupo rica                                        ', N'8000                                              ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (4, N'Induvecaa                                         ', N'9500                                              ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (5, N'Mercasid                                          ', N'25000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (6, N'Metaldon                                          ', N'30000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (7, N'Nestle                                            ', N'14000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (8, N'Pepsi                                             ', N'13000                                             ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (9, N'Baxter                                            ', N'1000                                              ')
INSERT [dbo].[Clientes] ([ID], [Empresas], [Cantidad de Pedidos de lentes]) VALUES (10, N'Eaton                                             ', N'500                                               ')
INSERT [dbo].[Datos de produccion] ([ID], [Produccion diaria], [Produccion mensual]) VALUES (1, 6000, 126000)
INSERT [dbo].[Datos del negocio] ([ID], [Precio del lente], [Ingreso mensual], [Ingreso cuatrimestral], [Ingresos anual]) VALUES (1, 60, 7560000, 22680000, 90720000)
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (1, N'Carlos                                            ', N'Operador  ', N'7000      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (2, N'Jose                                              ', N'Operador  ', N'7000      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (3, N'Manuel                                            ', N'Operador  ', N'7500      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (4, N'Luis                                              ', N'Operador  ', N'7700      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (5, N'Mariel                                            ', N'Calidad   ', N'9000      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (6, N'Carmen                                            ', N'Calidad   ', N'9000      ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (7, N'Daniel                                            ', N'Tecnico   ', N'15000     ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (8, N'Isabel                                            ', N'Encargada ', N'25000     ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (9, N'Melvin                                            ', N'Mecanico  ', N'20000     ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (10, N'Hector                                            ', N'Supervisor', N'35000     ')
INSERT [dbo].[Empleados] ([ID], [Nombre], [Posicion], [Sueldo]) VALUES (11, N'Castro                                            ', N'Gerente   ', N'60000     ')
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (1, 1, N'Marcos    ', 10, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (2, 2, N'Puente    ', 6, 1)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (3, 3, N'Lente     ', 10, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (4, 4, N'Brasos    ', 5, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (5, 5, N'Tornillos ', 4, 6)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (6, 6, N'Bisagras  ', 8, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (7, 7, N'Patas     ', 9, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (8, 8, N'Sortes    ', 7, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (9, 9, N'Plasticos ', 2, 2)
INSERT [dbo].[Partes del Producto] ([ID], [Iten], [Descripcion], [Precio], [Cantidad]) VALUES (10, 0, N'Estuche   ', 5, 1)
ALTER TABLE [dbo].[Datos de produccion]  WITH CHECK ADD  CONSTRAINT [FK_Datos de produccion_Datos del negocio] FOREIGN KEY([ID])
REFERENCES [dbo].[Datos del negocio] ([ID])
GO
ALTER TABLE [dbo].[Datos de produccion] CHECK CONSTRAINT [FK_Datos de produccion_Datos del negocio]
GO
USE [master]
GO
ALTER DATABASE [Eyes Protection ] SET  READ_WRITE 
GO
