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
ALTER TABLE [dbo].[Tbl_Reserva] 
ADD CONSTRAINT FK_Tbl_ReservaCliente foreign key(lCliente_iD_FK) references [dbo].[Tbl_Cliente](lCliente_iD);
ALTER TABLE [dbo].[Tbl_Reserva] 
ADD CONSTRAINT FK_Tbl_ReservaHabitacion foreign key(lHabitacion_iD_FK) references [dbo].[Tbl_Habitacion](lHabitacion_iD);