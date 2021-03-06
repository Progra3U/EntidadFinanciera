USE [master]
GO
/****** Object:  Database [EntidadFinanciera]    Script Date: 8/16/2018 12:21:18 PM ******/
CREATE DATABASE [EntidadFinanciera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EntidadFinanciera', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\EntidadFinanciera.mdf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'EntidadFinanciera_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\EntidadFinanciera.ldf' , SIZE = 1024KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [EntidadFinanciera] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntidadFinanciera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntidadFinanciera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntidadFinanciera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntidadFinanciera] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET RECOVERY FULL 
GO
ALTER DATABASE [EntidadFinanciera] SET  MULTI_USER 
GO
ALTER DATABASE [EntidadFinanciera] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntidadFinanciera] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EntidadFinanciera] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EntidadFinanciera] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EntidadFinanciera', N'ON'
GO
ALTER DATABASE [EntidadFinanciera] SET QUERY_STORE = OFF
GO
USE [EntidadFinanciera]
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
USE [EntidadFinanciera]
GO
/****** Object:  Table [dbo].[BancoExteno]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancoExteno](
	[IdTransacE] [int] IDENTITY(1,1) NOT NULL,
	[CuentaExterna] [nvarchar](50) NOT NULL,
	[DetalleTrans] [nvarchar](50) NOT NULL,
	[Monto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransacE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cedula] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido1] [nvarchar](50) NOT NULL,
	[Apellido2] [nvarchar](50) NOT NULL,
	[FechaNac] [datetime] NULL,
	[Telefono] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Provincia] [nvarchar](50) NOT NULL,
	[DireccionExac] [nvarchar](50) NOT NULL,
	[SaldoCuenta] [int] NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[CuentaInterna] [nvarchar](50) NOT NULL,
	[CuentaSimpe] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[IdSevicio] [int] IDENTITY(1,1) NOT NULL,
	[DescServicio] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSevicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[IdTransac] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [int] NULL,
	[CuentaInterna] [nvarchar](50) NOT NULL,
	[CuentaSimpe] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Monto] [int] NOT NULL,
	[HorayFecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaExterna]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ('Sin Descripcion') FOR [DetalleTrans]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ((1)) FOR [Monto]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Nombre]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Apellido1]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Apellido2]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('12345') FOR [Telefono]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Correo]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Provincia]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [DireccionExac]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [SaldoCuenta]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Contrasena]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [CuentaInterna]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [CuentaSimpe]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Servicio] ADD  DEFAULT ('Sin Descripcion') FOR [DescServicio]
GO
ALTER TABLE [dbo].[Servicio] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaInterna]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaSimpe]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ((1)) FOR [Monto]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ('Sin nombre') FOR [Nombre]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ('12345') FOR [Contrasena]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Delete]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_BancoExteno_Delete]
	@CuentaExterna	nvarchar(50)
AS
BEGIN
DELETE FROM BancoExteno WHERE CuentaExterna = @CuentaExterna
END
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Insert]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_BancoExteno_Insert]
	@CuentaExterna 	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@Monto 			int
AS 
BEGIN
INSERT INTO BancoExteno VALUES(@CuentaExterna,@DetalleTrans,@Monto)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Update]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_BancoExteno_Update]
	@CuentaExterna 	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@Monto 			int
AS  
BEGIN
UPDATE BancoExteno
SET  CuentaExterna = @CuentaExterna, DetalleTrans = @DetalleTrans, Monto = @Monto
WHERE CuentaExterna = @CuentaExterna
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_AbonoRetiroExterno]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Cliente_AbonoRetiroExterno]
	@CuentaSimpe 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta 
WHERE CuentaSimpe = @CuentaSimpe
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_AbonoRetiroInterno]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Cliente_AbonoRetiroInterno]
	@CuentaInterna 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta
WHERE CuentaInterna = @CuentaInterna
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Delete]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Cliente_Delete]
	@Cedula int
AS
BEGIN
DELETE FROM Cliente WHERE Cedula = @Cedula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Insert]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Cliente_Insert]
	@cedula 		int,
	@Nombre 		nvarchar(50),
	@Apellido1     	nvarchar(50),
	@Apellido2     	nvarchar(50),
	@FechaNac      	datetime,
	@Telefono     	nvarchar(50),
	@Correo	       	nvarchar(50),
	@Provincia     	nvarchar(50),
	@DireccionExac 	nvarchar(50),
	@SaldoCuenta   	int,
	@Contrasena	   	nvarchar(50),
	@CuentaInterna 	nvarchar(50),
	@CuentaSimpe	nvarchar(50),
	@Descripcion	nvarchar(50),
	@Estado		   	bit
AS 
BEGIN
INSERT INTO Cliente VALUES(
	@cedula,@Nombre,@Apellido1,@Apellido2,@FechaNac,@Telefono,@Correo,
	@Provincia,@DireccionExac,@SaldoCuenta,@Contrasena,@CuentaInterna,
	@CuentaSimpe,@Descripcion,@Estado
)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Update]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Cliente_Update]
	@Cedula 		int,
	@Nombre 		nvarchar(50),
	@Apellido1     	nvarchar(50),
	@Apellido2     	nvarchar(50),
	@FechaNac      	datetime,
	@Telefono     	nvarchar(50),
	@Correo	       	nvarchar(50),
	@Provincia     	nvarchar(50),
	@DireccionExac 	nvarchar(50),
	@SaldoCuenta   	int,
	@Contrasena	   	nvarchar(50),
	@CuentaInterna 	nvarchar(50),
	@CuentaSimpe	nvarchar(50),
	@Descripcion	nvarchar(50),
	@Estado		   	bit
AS 
BEGIN
UPDATE Cliente
SET Cedula = @Cedula, Nombre = @Nombre, Apellido1 = @Apellido1, Apellido2 = @Apellido2,
	FechaNac = @FechaNac, Telefono = @Telefono, Correo = @Correo, Provincia = @Provincia,
	DireccionExac = @DireccionExac, SaldoCuenta = @SaldoCuenta, Contrasena = @Contrasena,
	CuentaInterna = @CuentaInterna, CuentaSimpe = @CuentaSimpe, Descripcion = @Descripcion,
	Estado = @Estado
WHERE Cedula = @cedula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_EstadosdeCuenta]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_EstadosdeCuenta]
	@Cedula int
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.Cedula, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
			tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc
	WHERE  tnsc.Cedula = @Cedula
	ORDER BY tnsc.IdTransac
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Globales]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Globales]
AS
BEGIN
	SELECT cl.cuentaInterna AS Cuenta, cl.CuentaSimpe AS Simpe, cl.saldoCuenta As Fondos	
	FROM Cliente cl
	ORDER BY cl.saldoCuenta
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Delete]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Servicio_Delete]
	@DescServicio 	nvarchar(50)
AS
BEGIN
DELETE FROM Servicio WHERE DescServicio = @DescServicio
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Insert]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla Servicio

CREATE PROCEDURE [dbo].[pa_Servicio_Insert]
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Servicio VALUES(@DescServicio,@Estado)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Update]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Servicio_Update]
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Servicio
SET DescServicio = @DescServicio, Estado = @Estado
WHERE DescServicio = @DescServicio
END
GO
/****** Object:  StoredProcedure [dbo].[pa_TransaccionesRegistradas]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_TransaccionesRegistradas]
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.Cedula, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
	tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc 
	ORDER BY tnsc.IdTransac
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Delete]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Usuario_Delete]
	@Usuario nvarchar(50)
AS
BEGIN
DELETE FROM Usuario WHERE Usuario = @Usuario
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Insert]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla Usuario

CREATE PROCEDURE [dbo].[pa_Usuario_Insert]
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Usuario VALUES(@Usuario,@Nombre,@Contrasena,@Estado)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Update]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Usuario_Update]
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Usuario
SET Usuario = @Usuario, Nombre = @Nombre, Contrasena = @Contrasena, Estado = @Estado
WHERE Usuario = @Usuario
END
GO
/****** Object:  StoredProcedure [dbo].[pa_VerEstadoClientes]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pa_VerEstadoClientes]
	@Estado bit
AS
BEGIN
	SELECT 	cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2
	FROM Cliente cl 
	WHERE cl.Estado = @Estado
	ORDER BY cl.Cedula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_VerEstadoUsuarios]    Script Date: 8/16/2018 12:21:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_VerEstadoUsuarios]
	@Estado bit
AS
BEGIN
	SELECT 	usu.Usuario, usu.Nombre, usu.Estado
	FROM Usuario usu 
	WHERE usu.Estado = @Estado
	ORDER BY usu.Usuario
END
GO
USE [master]
GO
ALTER DATABASE [EntidadFinanciera] SET  READ_WRITE 
GO
