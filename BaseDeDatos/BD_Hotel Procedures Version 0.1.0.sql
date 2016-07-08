USE DB_Hotel
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectAllClientes' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectAllClientes
GO

CREATE PROCEDURE [dbo].sp_SelectAllClientes
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais
FROM            Tbl_Cliente
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_InsertCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_InsertCliente
GO

CREATE PROCEDURE [dbo].sp_InsertCliente
(
	@sNombre varchar(250),
	@sApellido varchar(250),
	@sDireccion varchar(250),
	@sTelefono varchar(250),
	@sDocumento varchar(250),
	@sPais varchar(250)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Cliente] ([sNombre], [sApellido], [sDireccion], [sTelefono], [sDocumento], [sPais]) VALUES (@sNombre, @sApellido, @sDireccion, @sTelefono, @sDocumento, @sPais);
	
SELECT lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais FROM Tbl_Cliente WHERE (lCliente_iD = SCOPE_IDENTITY())
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_UpdateCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_UpdateCliente
GO

CREATE PROCEDURE [dbo].sp_UpdateCliente
(
	@sNombre varchar(250),
	@sApellido varchar(250),
	@sDireccion varchar(250),
	@sTelefono varchar(250),
	@sDocumento varchar(250),
	@sPais varchar(250),
	@Original_lCliente_iD int,
	@lCliente_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Cliente] SET [sNombre] = @sNombre, [sApellido] = @sApellido, [sDireccion] = @sDireccion, [sTelefono] = @sTelefono, [sDocumento] = @sDocumento, [sPais] = @sPais WHERE (([lCliente_iD] = @Original_lCliente_iD));
	
SELECT lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais FROM Tbl_Cliente WHERE (lCliente_iD = @lCliente_iD)
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_DeleteCliente' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_DeleteCliente
GO

CREATE PROCEDURE [dbo].sp_DeleteCliente
(
	@Original_lCliente_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Cliente] WHERE (([lCliente_iD] = @Original_lCliente_iD))
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'sp_SelectClienteById' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].sp_SelectClienteById
GO

CREATE PROCEDURE [dbo].sp_SelectClienteById
(
	@lCliente_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais
FROM            Tbl_Cliente
WHERE        (lCliente_iD = @lCliente_iD)
GO




