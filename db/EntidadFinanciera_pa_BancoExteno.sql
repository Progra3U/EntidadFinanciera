USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla BancoExteno

CREATE PROCEDURE pa_BancoExteno_Insert
	IdTransacE 		int,
	CuentaExterna 	nvarchar(50),
	DetalleTrans 	nvarchar(50),
	Monto 			int
AS 
BEGIN
INSERT INTO BancoExteno VALUES(@IdTransacE,@CuentaExterna,@DetalleTrans,@Monto)
END
go

CREATE PROCEDURE pa_BancoExteno_Update
	IdTransacE 		int,
	CuentaExterna 	nvarchar(50),
	DetalleTrans 	nvarchar(50),
	Monto 			int
AS  
BEGIN
UPDATE BancoExteno
SET IdTransacE = @IdTransacE, CuentaExterna = @CuentaExterna, DetalleTrans = @DetalleTrans, Monto = @Monto
WHERE IdTransacE = @IdTransacE
END
go

CREATE PROCEDURE pa_BancoExtenoo_Delete
	@IdTransacE		int
DELETE FROM BancoExteno WHERE IdTransacE = @IdTransacE
END
go