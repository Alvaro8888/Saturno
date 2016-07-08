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
Print 'Iniciando 3 Tabla-Tbl_TipoHabitacion'

CREATE TABLE [dbo].[Tbl_TipoHabitacion]
(
lTipoHabitacion_iD	int identity(1,1) not null,
sNombre				varchar(50) not null,
sDescripcion		varchar(50) not null,
CONSTRAINT PK_Tbl_TipoHabitacion primary key(lTipoHabitacion_iD)
)
Go
Print 'Finalizando 3 Tabla-Tbl_TipoHabitacion'
------------------------------------- Soy Una Barra Separadora  :) --------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 4 Tabla-Tbl_Habitacion'

CREATE TABLE [dbo].[Tbl_Habitacion]
(
lHabitacion_iD		int identity(1,1) not null,
lNumeroHabitacion	int not null,
bEstado				bit not null,
lCosto				int not null,
sDescripcion		varchar(250) not null,
lTipoHabitacion_iD_FK	int not null,
CONSTRAINT PK_Tbl_Habitacion primary key(lHabitacion_iD),
CONSTRAINT FK_Tbl_HabitacionTipo foreign key(lTipoHabitacion_iD_FK) references [dbo].[Tbl_TipoHabitacion](lTipoHabitacion_iD)	
)
Go
Print 'Finalizando 4 Tabla-Tbl_Habitacion'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------