USE [DB_Hotel]
GO
/****** Object:  Table [dbo].[Tbl_Cliente]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Cliente](
	[lCliente_iD] [int] IDENTITY(1,1) NOT NULL,
	[sNombre] [varchar](250) NOT NULL,
	[sApellido] [varchar](250) NOT NULL,
	[sDireccion] [varchar](250) NOT NULL,
	[sTelefono] [varchar](250) NOT NULL,
	[sDocumento] [varchar](250) NOT NULL,
	[sPais] [varchar](250) NULL,
 CONSTRAINT [PK_Tbl_Cliente] PRIMARY KEY CLUSTERED 
(
	[lCliente_iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Habitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Habitacion](
	[lHabitacion_iD] [int] IDENTITY(1,1) NOT NULL,
	[lNumeroHabitacion] [int] NOT NULL,
	[bEstado] [bit] NOT NULL,
	[lCosto] [int] NOT NULL,
	[sDescripcion] [varchar](250) NOT NULL,
	[lTipoHabitacion_iD_FK] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Habitacion] PRIMARY KEY CLUSTERED 
(
	[lHabitacion_iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Reserva]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Reserva](
	[lReserva_iD] [int] IDENTITY(1,1) NOT NULL,
	[dFechaEntrada] [datetime] NOT NULL,
	[dFechaSalida] [datetime] NOT NULL,
	[lCostoTotal] [int] NOT NULL,
	[sObservacion] [varchar](250) NOT NULL,
	[lHabitacion_iD_FK] [int] NOT NULL,
	[lCliente_iD_FK] [int] NOT NULL,
	[lCantidadAdultos] [int] NULL,
	[lCantidadNinhos] [int] NULL,
 CONSTRAINT [PK_Tbl_Reserva] PRIMARY KEY CLUSTERED 
(
	[lReserva_iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_TipoHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_TipoHabitacion](
	[lTipoHabitacion_iD] [int] IDENTITY(1,1) NOT NULL,
	[sNombre] [varchar](50) NOT NULL,
	[sDescripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_TipoHabitacion] PRIMARY KEY CLUSTERED 
(
	[lTipoHabitacion_iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Tbl_Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HabitacionTipo] FOREIGN KEY([lTipoHabitacion_iD_FK])
REFERENCES [dbo].[Tbl_TipoHabitacion] ([lTipoHabitacion_iD])
GO
ALTER TABLE [dbo].[Tbl_Habitacion] CHECK CONSTRAINT [FK_Tbl_HabitacionTipo]
GO
ALTER TABLE [dbo].[Tbl_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ReservaCliente] FOREIGN KEY([lCliente_iD_FK])
REFERENCES [dbo].[Tbl_Cliente] ([lCliente_iD])
GO
ALTER TABLE [dbo].[Tbl_Reserva] CHECK CONSTRAINT [FK_Tbl_ReservaCliente]
GO
ALTER TABLE [dbo].[Tbl_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ReservaHabitacion] FOREIGN KEY([lHabitacion_iD_FK])
REFERENCES [dbo].[Tbl_Habitacion] ([lHabitacion_iD])
GO
ALTER TABLE [dbo].[Tbl_Reserva] CHECK CONSTRAINT [FK_Tbl_ReservaHabitacion]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCliente]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteCliente]
(
	@Original_lCliente_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Cliente] WHERE (([lCliente_iD] = @Original_lCliente_iD))

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteHabitacion]
(
	@Original_lHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Habitacion] WHERE (([lHabitacion_iD] = @Original_lHabitacion_iD))

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteReserva]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteReserva]
(
	@Original_lReserva_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_Reserva] WHERE (([lReserva_iD] = @Original_lReserva_iD))

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTipoHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteTipoHabitacion]
(
	@Original_lTipoHabitacion_iD int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Tbl_TipoHabitacion] WHERE (([lTipoHabitacion_iD] = @Original_lTipoHabitacion_iD))

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCliente]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertCliente]
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
/****** Object:  StoredProcedure [dbo].[sp_InsertHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertHabitacion]
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
/****** Object:  StoredProcedure [dbo].[sp_InsertReserva]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertReserva]
(
	@dFechaEntrada datetime,
	@dFechaSalida datetime,
	@lCostoTotal int,
	@sObservacion varchar(250),
	@lHabitacion_iD_FK int,
	@lCliente_iD_FK int,
	@lCantidadAdultos int,
	@lCantidadNinhos int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_Reserva] ([dFechaEntrada], [dFechaSalida], [lCostoTotal], [sObservacion], [lHabitacion_iD_FK], [lCliente_iD_FK], [lCantidadAdultos], [lCantidadNinhos]) VALUES (@dFechaEntrada, @dFechaSalida, @lCostoTotal, @sObservacion, @lHabitacion_iD_FK, @lCliente_iD_FK, @lCantidadAdultos, @lCantidadNinhos);
	
SELECT lReserva_iD, dFechaEntrada, dFechaSalida, lCostoTotal, sObservacion, lHabitacion_iD_FK, lCliente_iD_FK, lCantidadAdultos, lCantidadNinhos  FROM Tbl_Reserva WHERE (lReserva_iD = SCOPE_IDENTITY())

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertTipoHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertTipoHabitacion]
(
	@sNombre varchar(50),
	@sDescripcion varchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tbl_TipoHabitacion] ([sNombre], [sDescripcion]) VALUES (@sNombre, @sDescripcion);
	
SELECT lTipoHabitacion_iD, sNombre, sDescripcion FROM Tbl_TipoHabitacion WHERE (lTipoHabitacion_iD = SCOPE_IDENTITY())

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAllClientes]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectAllClientes]
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais
FROM            Tbl_Cliente

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAllHabitaciones]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectAllHabitaciones]
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK
FROM            Tbl_Habitacion

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAllReservas]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectAllReservas]
AS
	SET NOCOUNT ON;
SELECT        lReserva_iD, dFechaEntrada, dFechaSalida, lCostoTotal, sObservacion, lHabitacion_iD_FK, lCliente_iD_FK, lCantidadAdultos, lCantidadNinhos
FROM            Tbl_Reserva

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAllTipoHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectAllTipoHabitacion]
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sNombre, sDescripcion
FROM            Tbl_TipoHabitacion

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectClienteById]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectClienteById]
(
	@lCliente_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lCliente_iD, sNombre, sApellido, sDireccion, sTelefono, sDocumento, sPais
FROM            Tbl_Cliente
WHERE        (lCliente_iD = @lCliente_iD)

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectHabitacionById]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectHabitacionById]
(
	@lHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lHabitacion_iD, lNumeroHabitacion, bEstado, lCosto, sDescripcion, lTipoHabitacion_iD_FK
FROM            Tbl_Habitacion
WHERE        (lHabitacion_iD = @lHabitacion_iD)

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectReservaById]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectReservaById]
(
	@lReserva_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lReserva_iD, dFechaEntrada, dFechaSalida, lCostoTotal, sObservacion, lHabitacion_iD_FK, lCliente_iD_FK, lCantidadAdultos, lCantidadNinhos
FROM            Tbl_Reserva
WHERE        (lReserva_iD = @lReserva_iD)

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectTipoHabitacionById]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SelectTipoHabitacionById]
(
	@lTipoHabitacion_iD int
)
AS
	SET NOCOUNT ON;
SELECT        lTipoHabitacion_iD, sNombre, sDescripcion
FROM            Tbl_TipoHabitacion
WHERE        (lTipoHabitacion_iD = @lTipoHabitacion_iD)

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCliente]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateCliente]
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateHabitacion]
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
/****** Object:  StoredProcedure [dbo].[sp_UpdateReserva]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateReserva]
(
	@dFechaEntrada datetime,
	@dFechaSalida datetime,
	@lCostoTotal int,
	@sObservacion varchar(250),
	@lHabitacion_iD_FK int,
	@lCliente_iD_FK int,
	@lCantidadAdultos int,
	@lCantidadNinhos int,
	@Original_lReserva_iD int,
	@lReserva_iD int
)
AS
	SET NOCOUNT OFF;
UPDATE [Tbl_Reserva] SET [dFechaEntrada] = @dFechaEntrada, [dFechaSalida] = @dFechaSalida, [lCostoTotal] = @lCostoTotal, [sObservacion] = @sObservacion, [lHabitacion_iD_FK] = @lHabitacion_iD_FK, [lCliente_iD_FK] = @lCliente_iD_FK, [lCantidadAdultos] = @lCantidadAdultos, [lCantidadNinhos] = @lCantidadNinhos WHERE (([lReserva_iD] = @Original_lReserva_iD));
	
SELECT lReserva_iD, dFechaEntrada, dFechaSalida, lCostoTotal, sObservacion, lHabitacion_iD_FK, lCliente_iD_FK, lCantidadAdultos, lCantidadNinhos FROM Tbl_Reserva WHERE (lReserva_iD = @lReserva_iD)

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTipoHabitacion]    Script Date: 08/07/2016 1:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateTipoHabitacion]
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
