use master;  --Esta es la base madre que me permite generar desde ella 
go           --nuevas bases de datos y maneja informacion general

--Lenguaje de Definicion de datos

IF NOT EXISTS(SELECT * FROM sysdatabases WHERE name = 'ProyectoProgra')
	BEGIN
		create database ProyectoProgra
		ON(
			NAME = 'ProyectoProgra',
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\ProyectoProgra.mdf',
			SIZE = 1MB,
			MAXSIZE = 10MB,
			FILEGROWTH = 5
		)
		LOG ON(
			NAME = 'ProyectoProgra_log',
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\ProyectoProgra.ldf',
			SIZE = 1MB,
			MAXSIZE = 10MB,
			FILEGROWTH = 5
		)
	END
ELSE
	BEGIN
		print 'Base de datos ya existe'
	END
go

use ProyectoProgra --Ubicacion de la base de datos
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Clientes')
	BEGIN
		create table Clientes--Defino la tabla con sus campos y propiedades					  
		(				     --Se estable la clave primaria y valor default
			 cedula int primary key,
             nombreUsuario nvarchar(50) not null default('Sin Nombre'),
			 apellido1     nvarchar(50) not null default('Sin Nombre'),
             apellido2     nvarchar(50) not null default('Sin Nombre'),
             fechanac      datetime,
             Telefono     nvarchar(50) not null default('12345'),
             correo	       nvarchar(50) not null default('Sin Nombre'),
             provincia     nvarchar(50) not null default('Sin Nombre'),
             direccionexac nvarchar(50) not null default('Sin Nombre'),
             saldoCuenta   int  not null default(1),
             contrasena	   nvarchar(50) not null default('Sin Nombre'),
             cuentaUsuario nvarchar(50) not null default('Sin Nombre'),
             simpe		   nvarchar(50) not null default('Sin Nombre'),
             activo		   bit not null default(1)

		)
	END
ELSE
	BEGIN
		print 'Tabla Clientes existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Usuarios')
	BEGIN
		create table Usuarios
		(

			codUsuario int primary key,
			nomUsuario nvarchar(50) not null default('Sin nombre'),
			Contrasena nvarchar(50) not null default('12345'),
			activo bit not null default(1)
		)
	END
ELSE
	BEGIN
		print 'Tabla Usuarios existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Transaccion')
	BEGIN
		create table Transaccion
		(
		    cedula int primary key,
            nombreUsuario nvarchar(50) not null default('Sin Nombre'),
			apellido1     nvarchar(50) not null default('Sin Nombre'),
			saldoCuenta   int  not null default(1),
            CuentaDepositar	nvarchar(50) not null default('1233444'),
            cuentaUsuario nvarchar(50) not null default('Sin Nombre'),
		
		)
	END
ELSE
	BEGIN
		print 'Tabla transaccion existe'
	END
go

-- Lenguaje de Manipulacion de datos

insert into Usuarios values (121,'judas', '1234', 1)
insert into Clientes values (402100628,'Marce','Salas','Montoya', '55-33-2018','123455454','marsalas91',
'Heredia','mercedesNorte', 1500, '5532018','12345678987','131289738912737123',1)


Select * from Clientes
Select * from Usuarios
Select * from Transaccion

insert into Clientes
values (123456,'Jose', 'Gabriel', 'Cordero', '1986-01-13',
		1232323123,'jose.cordero3@uamcr.net','Heredia','Heredia',23343,'12231132','13312312312','1212',1)

		insert into Transaccion
values (123456,'Jose', 'Gabriel',1000,'133123312','13312312312')

SELECT * FROM Clientes INNER JOIN Transaccion on Clientes.cedula = Transaccion.cedula


