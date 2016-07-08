USE DB_Hotel
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_SelectAllTipoHabitacion
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sNombre, sDescripcion
FROM            Tbl_TipoHabitacion
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_InsertTipoHabitacion
(
	@sNombre varchar(50),
	@sDescripcion varchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_TipoHabitacion] ([sNombre], [sDescripcion]) VALUES (@sNombre, @sDescripcion);
	
SELECT lTipoHabitacion_iD, sNombre, sDescripcion FROM Tbl_TipoHabitacion WHERE (lTipoHabitacion_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_UpdateTipoHabitacion
(
	@sNombre varchar(50),
	@sDescripcion varchar(50),
	@Original_lTipoHabitacion_iD int,
	@lTipoHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_TipoHabitacion] SET [sNombre] = @sNombre, [sDescripcion] = @sDescripcion WHERE (([lTipoHabitacion_iD] = @Original_lTipoHabitacion_iD));
	
SELECT lTipoHabitacion_iD, sNombre, sDescripcion FROM Tbl_TipoHabitacion WHERE (lTipoHabitacion_iD = @lTipoHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteTipoHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteTipoHabitacion
GO

CREATE PROCEDURE [dbo].sp_DeleteTipoHabitacion
(
	@Original_lTipoHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_TipoHabitacion] WHERE (([lTipoHabitacion_iD] = @Original_lTipoHabitacion_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectTipoHabitacionById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectTipoHabitacionById
GO

CREATE PROCEDURE [dbo].sp_SelectTipoHabitacionById
(
	@lTipoHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sNombre, sDescripcion
FROM            Tbl_TipoHabitacion
WHERE        (lTipoHabitacion_iD = @lTipoHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllHabitaciones' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllHabitaciones
GO

CREATE PROCEDURE [dbo].sp_SelectAllHabitaciones
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK
FROM            Tbl_Habitacion
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertHabitacion
GO

CREATE PROCEDURE [dbo].sp_InsertHabitacion
(
	@lNumeroHabitacion int,
	@bEstado bit,
	@lCosto int,
	@sDescripcion varchar(250),
	@lTipoHabitacion_iD_FK int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Habitacion] ([lNumeroHabitacion], [bEstado], [lCosto], [sDescripcion], [lTipoHabitacion_iD_FK]) VALUES (@lNumeroHabitacion, @bEstado, @lCosto, @sDescripcion, @lTipoHabitacion_iD_FK);
	
SELECT lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK FROM Tbl_Habitacion WHERE (lHabitacion_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateHabitacion
GO

CREATE PROCEDURE [dbo].sp_UpdateHabitacion
(
	@lNumeroHabitacion int,
	@bEstado bit,
	@lCosto int,
	@sDescripcion varchar(250),
	@lTipoHabitacion_iD_FK int,
	@Original_lHabitacion_iD int,
	@lHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Habitacion] SET [lNumeroHabitacion] = @lNumeroHabitacion, [bEstado] = @bEstado, [lCosto] = @lCosto, [sDescripcion] = @sDescripcion, [lTipoHabitacion_iD_FK] = @lTipoHabitacion_iD_FK WHERE (([lHabitacion_iD] = @Original_lHabitacion_iD));
	
SELECT lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK FROM Tbl_Habitacion WHERE (lHabitacion_iD = @lHabitacion_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteHabitacion' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteHabitacion
GO

CREATE PROCEDURE [dbo].sp_DeleteHabitacion
(
	@Original_lHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Habitacion] WHERE (([lHabitacion_iD] = @Original_lHabitacion_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectHabitacionById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectHabitacionById
GO

CREATE PROCEDURE [dbo].sp_SelectHabitacionById
(
	@lHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK
FROM            Tbl_Habitacion
WHERE        (lHabitacion_iD = @lHabitacion_iD)
GO


