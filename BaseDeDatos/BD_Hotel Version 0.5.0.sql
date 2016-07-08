-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.1.1
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

USE DB_Hotel
GO

------------------------------------- Soy Una Barra Separadora :) ----------------------------------------
ALTER TABLE [dbo].[Tbl_Cliente] 
DROP CONSTRAINT FK_Tbl_ClienteNacionalidad; 

DROP TABLE [dbo].[Tbl_Nacionalidad] ;  

ALTER TABLE [dbo].[Tbl_Cliente] 
DROP COLUMN lNacionalidad_iD_FK;

ALTER TABLE [dbo].[Tbl_Cliente] 
ADD sPais varchar(250);