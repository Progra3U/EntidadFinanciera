USE EntidadFinanciera 
go
--Creacion de Triggers para las tablas 
CREATE TRIGGER tg_InsertTransaccion
ON Cliente
FOR INSERT, UPDATE, DELETE
AS
INSERT Transaccion 
(Cedula,CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT Cedula, CuentaInterna, CuentaSimpe, Descripcion, 0, GETDATE()
FROM INSERTED






