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
Print 'Iniciando 1 Tabla-Tbl_Nacionalidad'

CREATE TABLE [dbo].[Tbl_Nacionalidad]
(
lNacionalidad_iD	int identity(1,1) not null,
sPais				varchar(250) not null,
sNacionalidad		varchar(250) not null,
CONSTRAINT PK_Tbl_Nacionalidad primary key(lNacionalidad_iD)
)
Go
Print 'Finalizando 1 Tabla-Tbl_Nacionalidad'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 2 Tabla-Tbl_Cliente'

CREATE TABLE [dbo].[Tbl_Cliente]
(
lCliente_iD			int identity(1,1) not null,
sNombre				varchar(250) not null,
sApellido			varchar(250) not null,
sDireccion			varchar(250) not null,
sTelefono			varchar(250) not null,
sDocumento			varchar(250) not null,
lNacionalidad_iD_FK int not null,
CONSTRAINT PK_Tbl_Cliente primary key(lCliente_iD),
CONSTRAINT FK_Tbl_ClienteNacionalidad foreign key(lNacionalidad_iD_FK) references [dbo].[Tbl_Nacionalidad](lNacionalidad_iD)
)
Go

Print 'Finalizando 2 Tabla-Tbl_Cliente'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------