-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.6.0
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

USE DB_Hotel
GO

------------------------------------- Soy Una Barra Separadora :) ----------------------------------------

ALTER TABLE [dbo].[Tbl_Reserva] DROP CONSTRAINT  FK_Tbl_ReservaEstado;

DROP TABLE[dbo].[Tbl_Estado];




ALTER TABLE [dbo].[Tbl_Reserva] 
DROP COLUMN lEstado_iD_FK;