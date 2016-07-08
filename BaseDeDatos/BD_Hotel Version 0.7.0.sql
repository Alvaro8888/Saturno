-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.6.0
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

USE DB_Hotel
GO

------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Adicionando Columanas a Tabla-Tbl_Reserva'

ALTER TABLE [dbo].[Tbl_Reserva] ADD lCantidadAdultos int;
ALTER TABLE [dbo].[Tbl_Reserva] ADD lCantidadNinhos int;

Print 'Finalizando Columanas a Tabla-Tbl_Reserva'
