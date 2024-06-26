USE [master]
GO
/****** Object:  Database [TemisDB]    Script Date: 6/7/2024 11:32:08 PM ******/
CREATE DATABASE [TemisDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TemisDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TemisDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TemisDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TemisDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TemisDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TemisDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TemisDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TemisDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TemisDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TemisDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TemisDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TemisDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TemisDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TemisDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TemisDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TemisDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TemisDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TemisDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TemisDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TemisDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TemisDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TemisDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TemisDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TemisDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TemisDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TemisDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TemisDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TemisDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TemisDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TemisDB] SET  MULTI_USER 
GO
ALTER DATABASE [TemisDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TemisDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TemisDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TemisDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TemisDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TemisDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TemisDB', N'ON'
GO
ALTER DATABASE [TemisDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [TemisDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TemisDB]
GO
/****** Object:  Table [dbo].[Abogados]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abogados](
	[ID_Abogados] [nvarchar](6) NOT NULL,
	[NombreAbogado] [nvarchar](50) NOT NULL,
	[ApellidosAbogado] [nvarchar](50) NOT NULL,
	[DUIAbogado] [nvarchar](10) NOT NULL,
	[EspecialidadAbogado] [nvarchar](20) NOT NULL,
	[TelefonoAbogado] [nvarchar](15) NOT NULL,
	[EmailAbogado] [nvarchar](50) NOT NULL,
	[CSJ] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Abogados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asistentes]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistentes](
	[ID_Asistente] [int] NOT NULL,
	[pNombre] [varchar](50) NULL,
	[sNombre] [varchar](50) NULL,
	[pApellido] [varchar](50) NULL,
	[sApellido] [varchar](50) NULL,
	[DUI] [int] NULL,
	[WorkedHrs] [float] NULL,
 CONSTRAINT [PK_Asistentes] PRIMARY KEY CLUSTERED 
(
	[ID_Asistente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casos]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casos](
	[ID_Case] [nvarchar](6) NOT NULL,
	[Caso_Nombre] [nvarchar](50) NOT NULL,
	[Tipo_Facturacion] [nvarchar](50) NOT NULL,
	[PrecioCaso] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Case] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [nvarchar](6) NOT NULL,
	[PrimNombre] [nvarchar](50) NOT NULL,
	[SegNombre] [nvarchar](50) NOT NULL,
	[PrimAprellido] [nvarchar](50) NOT NULL,
	[SegAprellido] [nvarchar](50) NOT NULL,
	[DUI] [nvarchar](10) NOT NULL,
	[Client_Edad] [nvarchar](3) NOT NULL,
	[Nacionalidad] [nvarchar](50) NOT NULL,
	[Ocupacion] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](500) NOT NULL,
	[Telefonoo] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[ID_Documento] [int] NULL,
	[Nombre_Documento] [varchar](50) NULL,
	[ID_Cliente] [int] NULL,
	[NombreCliente] [nchar](10) NULL,
	[Case_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[ID_Factura] [int] NOT NULL,
	[Case_ID] [int] NULL,
	[WorkedHrs] [float] NULL,
	[Caso_Nombre] [varchar](50) NULL,
	[Tipo_Facturacion] [varchar](50) NULL,
	[ID_Cliente] [int] NULL,
	[ID_Abogado] [int] NULL,
	[Nombre_Cliente] [varchar](100) NULL,
	[Nombre_Abogado] [varchar](1000) NULL,
 CONSTRAINT [PK_Facturaciones] PRIMARY KEY CLUSTERED 
(
	[ID_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDControl]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDControl](
	[TableName] [nvarchar](50) NOT NULL,
	[LastID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolPermisos]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolPermisos](
	[RolId] [int] NOT NULL,
	[PermisoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RolId] ASC,
	[PermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioRoles]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRoles](
	[UsuarioId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC,
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CSJ] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](100) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CSJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RolPermisos]  WITH CHECK ADD FOREIGN KEY([PermisoId])
REFERENCES [dbo].[Permisos] ([Id])
GO
ALTER TABLE [dbo].[RolPermisos]  WITH CHECK ADD FOREIGN KEY([RolId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD FOREIGN KEY([RolId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[actualizar]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[actualizar] @id int ,@PrimerNombre varchar(50),@SegNombre varchar(50),@PrimApellido varchar(50),@SegApellido varchar(50),
@DUI int,@Client_Edad int,@Nacionalidad Varchar(50),@Ocupacion varchar(50),
@Direccion varchar(50),@Telefono Varchar (50),@Email varchar(100) as 
update Clientes set PrimNombre=@PrimerNombre,SegNombre=@SegNombre,PrimApellido=@PrimApellido,SegApellido=@SegApellido, DUI=@DUI, Client_Edad=@Client_Edad, 
Nacionalidad=@Nacionalidad,Ocupacion=@Ocupacion,Direccion=@Direccion,Telefono=@Telefono,Email=@Email
where ID_Cliente=@id
GO
/****** Object:  StoredProcedure [dbo].[datosusuarios]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[datosusuarios] as Select * from Clientes
GO
/****** Object:  StoredProcedure [dbo].[elimnar]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[elimnar] @id int as delete from Clientes where ID_Cliente=@id
GO
/****** Object:  StoredProcedure [dbo].[InsertarCliente]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCliente]
	@id int,
    @PrimNombre VARCHAR(50),
    @SegNombre VARCHAR(50),
    @PrimApellido VARCHAR(50),
    @SegApellido VARCHAR(50),
    @DUI int,
    @Client_Edad INT,
    @Nacionalidad VARCHAR(50),
    @Ocupacion VARCHAR(50),
    @Direccion VARCHAR(100),
    @Telefono VARCHAR(20),
    @Email VARCHAR(100)
AS
BEGIN
    INSERT INTO clientes (ID_Cliente, SegNombre, PrimApellido, SegApellido, DUI, Client_Edad, Nacionalidad, Ocupacion, Direccion, Telefono, Email)
    VALUES (@id, @SegNombre, @PrimApellido, @SegApellido, @DUI, @Client_Edad, @Nacionalidad, @Ocupacion, @Direccion, @Telefono, @Email)
END
GO
/****** Object:  StoredProcedure [dbo].[llenar]    Script Date: 6/7/2024 11:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[llenar] @id int as 
select * from Clientes where ID_Cliente=@id
GO
USE [master]
GO
ALTER DATABASE [TemisDB] SET  READ_WRITE 
GO
