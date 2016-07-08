-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.1.1
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

PRINT 'INICIANDO CREACION DE LA BASE DE DATOS'

USE master;
GO

IF NOT EXISTS(SELECT name FROM sys.databases WHERE name = 'DB_Hotel')
	CREATE DATABASE DB_Hotel;
GO

USE DB_Hotel
GO

PRINT 'FIN CREACION BASE DE DATOS'
GO


PRINT 'INICIANDO CREACION DE ESQUEMAS'

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'dbo')
	Exec('CREATE SCHEMA dbo')
GO

PRINT 'FIN CREACION DE ESQUEMAS'
GO
------------------------------------- Soy Una Barra Separadora :) ----------------------------------------

PRINT 'INICIANDO CREACION DE TABLAS'
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 5 Tabla-Tbl_Estado'

CREATE TABLE [dbo].[Tbl_Estado]
(
lEstado_iD		int identity(1,1) not null,
sNombre			varchar(250) not null,
CONSTRAINT PK_Tbl_Estado primary key(lEstado_iD)
)
Go
Print 'Finalizando 5 Tabla-Tbl_Estado'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 6 Tabla-Tbl_Reserva'

CREATE TABLE [dbo].[Tbl_Reserva]
(
lReserva_iD			int identity(1,1) not null,
dFechaEntrada		datetime not null,
dFechaSalida		datetime not null,
lCostoTotal			int not null,
sObservacion 		varchar(250) not null,
lHabitacion_iD_FK	int not null,
lCliente_iD_FK		int not null,
lEstado_iD_FK 		int not null,
CONSTRAINT PK_Tbl_Reserva primary key(lReserva_iD),
CONSTRAINT FK_Tbl_ReservaEstado foreign key(lEstado_iD_FK) references [dbo].[Tbl_Estado](lEstado_iD)
)
Go
Print 'Finalizando 6 Tabla-Tbl_Reserva'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

