USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Servicio

CREATE PROCEDURE pa_Servicio_Insert
	@IdSevicio 		int,
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Servicio VALUES(@IdSevicio,@DescServicio,@Estado)
END
go

CREATE PROCEDURE pa_Servicio_Update
	@IdSevicio 		int,
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Servicio
SET IdSevicio = @IdSevicio, DescServicio = @DescServicio, Estado = @Estado
WHERE IdSevicio = @IdSevicio
END
go

CREATE PROCEDURE pa_Servicio_Delete
	@IdSevicio 		int
DELETE FROM Servicio WHERE IdSevicio = @IdSevicio
END
go