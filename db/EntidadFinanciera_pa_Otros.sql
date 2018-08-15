--Creacion de pa para Transferencia de Cuentas Internas
CREATE PROCEDURE pa_Cliente_AbonoRetiroInterno
	@CuentaInterna 	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET SaldoCuenta = @SaldoCuenta
WHERE CuentaInterna = @CuentaInterna
END
go

--Creacion de pa para Transferencia de Cuentas Externas
CREATE PROCEDURE pa_Cliente_AbonoRetiroExterno
	@CuentaSimpe 	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET SaldoCuenta = @SaldoCuenta
WHERE CuentaSimpe = @CuentaSimpe
END
go

--Creacion de pa para Estados Globales
CREATE PROCEDURE pa_Globales
AS
BEGIN
	SELECT cl.cuentaInterna AS Cuenta, cl.CuentaSimpe AS Simpe, cl.saldoCuenta As Fondos	
	FROM Cliente cl
	ORDER BY cl.saldoCuenta
END
go

--Creacion de pa para Estados de Cuenta Clientes
CREATE PROCEDURE pa_EstadosdeCuenta
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.Cedula, tnsc.CuentaDeb, 
			tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha,
			cl.Cedula
	FROM Transaccion tnsc 
	INNER JOIN Cliente cl on tnsc.Cedula = cl.Cedula
	ORDER BY tnsc.IdTransac
END
go

--Creacion de pa para ver Estados de los Usuarios
CREATE PROCEDURE pa_VerEstadoUsuarios
	@Estado bit
AS
BEGIN
	SELECT 	usu.Usuario, usu.Nombre, usu.Estado
	FROM Usuario usu 
	WHERE usu.Estado = @Estado
	ORDER BY usu.Usuario
END
go

--Creacion de pa para ver Estados de los Clientes
CREATE PROCEDURE pa_VerEstadoUsuarios
	@Estado bit
AS
BEGIN
	SELECT 	cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2
	FROM Cliente cl 
	WHERE cl.Estado = @Estado
	ORDER BY cl.Cedula
END
go

--Creacion de pa para ver las Transacciones de clientes por ID
CREATE PROCEDURE pa_TransaccionesporID
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.Cedula, tnsc.CuentaDeb, 
			tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha,
			cl.Cedula
	FROM Transaccion tnsc 
	ORDER BY tnsc.IdTransac
END
go
