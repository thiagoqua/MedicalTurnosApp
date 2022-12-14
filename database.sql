USE [AplicacionWeb]
GO
/****** Object:  Table [dbo].[Afiliado]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Afiliado](
	[AfiliadoID] [int] IDENTITY(1,1) NOT NULL,
	[nroDNI] [int] NOT NULL,
	[Nombre] [nchar](20) NOT NULL,
	[Apellido] [nchar](20) NOT NULL,
	[IDLocalidad] [int] NOT NULL,
	[IDPlan] [int] NOT NULL,
	[NroAfiliado] [nchar](20) NULL,
 CONSTRAINT [PK_Afiliado] PRIMARY KEY CLUSTERED 
(
	[AfiliadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Año]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Año](
	[AñoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreAño] [int] NOT NULL,
 CONSTRAINT [PK_Año] PRIMARY KEY CLUSTERED 
(
	[AñoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dia](
	[DiaID] [int] IDENTITY(1,1) NOT NULL,
	[NombreDia] [char](10) NOT NULL,
 CONSTRAINT [PK_Dia] PRIMARY KEY CLUSTERED 
(
	[DiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisponibilidadMedico]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisponibilidadMedico](
	[DisponibilidadID] [int] IDENTITY(1,1) NOT NULL,
	[IDMedico] [int] NOT NULL,
	[IDDia] [int] NOT NULL,
	[Consultorio] [int] NOT NULL,
	[HorarioInicio] [time](7) NOT NULL,
	[HorarioFin] [time](7) NOT NULL,
	[IDSucursal] [int] NOT NULL,
 CONSTRAINT [PK_DisponibilidadMedico] PRIMARY KEY CLUSTERED 
(
	[DisponibilidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[EspecialidadId] [int] IDENTITY(1,1) NOT NULL,
	[EspecialidadDescripcion] [nchar](50) NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[EspecialidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaTurno]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaTurno](
	[FechaTurnoID] [int] IDENTITY(1,1) NOT NULL,
	[IDDia] [int] NOT NULL,
	[IDHorario] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_FechaTurno] PRIMARY KEY CLUSTERED 
(
	[FechaTurnoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[HorarioID] [int] IDENTITY(1,1) NOT NULL,
	[Hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[HorarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[LocalidadId] [int] IDENTITY(1,1) NOT NULL,
	[LocalidadDescripcion] [nchar](50) NOT NULL,
	[IDProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[LocalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[MedicoID] [int] IDENTITY(1,1) NOT NULL,
	[IDEspecialidad] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[MedicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoSucursal]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoSucursal](
	[IDMedicoSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IDMedico] [int] NOT NULL,
	[IDSucursal] [int] NOT NULL,
 CONSTRAINT [PK_MedicoSucursal] PRIMARY KEY CLUSTERED 
(
	[IDMedicoSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mes]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mes](
	[MesID] [int] IDENTITY(1,1) NOT NULL,
	[NombreMes] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Mes] PRIMARY KEY CLUSTERED 
(
	[MesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NuevaContraseña]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuevaContraseña](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[Creacion] [datetime] NOT NULL,
 CONSTRAINT [PK_NuevaContraseña] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[ObraSocialId] [int] IDENTITY(1,1) NOT NULL,
	[ObraSocialDescripcion] [nchar](50) NOT NULL,
 CONSTRAINT [PK_ObraSocial] PRIMARY KEY CLUSTERED 
(
	[ObraSocialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[PerfilId] [int] IDENTITY(1,1) NOT NULL,
	[PerfilDescripcion] [nchar](10) NULL,
	[PerfilHabilitado] [bit] NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[PerfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanObraSocial]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanObraSocial](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[PlanDescripcion] [nchar](50) NOT NULL,
	[IDObraSocial] [int] NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ProvinciaId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinciaDescripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[ProvinciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServidorMail]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServidorMail](
	[ID] [int] NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Pass] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[SucursalId] [int] IDENTITY(1,1) NOT NULL,
	[SucursalDescripcion] [nvarchar](50) NOT NULL,
	[IDLocalidad] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[SucursalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[TurnoId] [int] IDENTITY(1,1) NOT NULL,
	[IDFechaTurno] [int] NOT NULL,
	[IDMedico] [int] NOT NULL,
	[IDEspecialidad] [int] NOT NULL,
	[IDProvincia] [int] NOT NULL,
	[IDLocalidad] [int] NOT NULL,
	[IDSucursal] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[TurnoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19/12/2022 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[IDAfiliado] [int] NOT NULL,
	[UsuarioContraseña] [varchar](200) NOT NULL,
	[UsuarioEmail] [varchar](50) NOT NULL,
	[IDPerfil] [int] NOT NULL,
	[isMedico] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Afiliado]  WITH CHECK ADD  CONSTRAINT [FK_Afiliado_Localidad] FOREIGN KEY([IDLocalidad])
REFERENCES [dbo].[Localidad] ([LocalidadId])
GO
ALTER TABLE [dbo].[Afiliado] CHECK CONSTRAINT [FK_Afiliado_Localidad]
GO
ALTER TABLE [dbo].[Afiliado]  WITH CHECK ADD  CONSTRAINT [FK_Afiliado_Plan] FOREIGN KEY([IDPlan])
REFERENCES [dbo].[PlanObraSocial] ([PlanId])
GO
ALTER TABLE [dbo].[Afiliado] CHECK CONSTRAINT [FK_Afiliado_Plan]
GO
ALTER TABLE [dbo].[DisponibilidadMedico]  WITH CHECK ADD  CONSTRAINT [FK_DisponibilidadMedico_Dia] FOREIGN KEY([IDDia])
REFERENCES [dbo].[Dia] ([DiaID])
GO
ALTER TABLE [dbo].[DisponibilidadMedico] CHECK CONSTRAINT [FK_DisponibilidadMedico_Dia]
GO
ALTER TABLE [dbo].[DisponibilidadMedico]  WITH CHECK ADD  CONSTRAINT [FK_DisponibilidadMedico_Medico] FOREIGN KEY([IDMedico])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[DisponibilidadMedico] CHECK CONSTRAINT [FK_DisponibilidadMedico_Medico]
GO
ALTER TABLE [dbo].[DisponibilidadMedico]  WITH CHECK ADD  CONSTRAINT [FK_DisponibilidadMedico_Sucursal] FOREIGN KEY([IDSucursal])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[DisponibilidadMedico] CHECK CONSTRAINT [FK_DisponibilidadMedico_Sucursal]
GO
ALTER TABLE [dbo].[FechaTurno]  WITH CHECK ADD  CONSTRAINT [FK_FechaTurno_Dia] FOREIGN KEY([IDDia])
REFERENCES [dbo].[Dia] ([DiaID])
GO
ALTER TABLE [dbo].[FechaTurno] CHECK CONSTRAINT [FK_FechaTurno_Dia]
GO
ALTER TABLE [dbo].[FechaTurno]  WITH CHECK ADD  CONSTRAINT [FK_FechaTurno_Horario] FOREIGN KEY([IDHorario])
REFERENCES [dbo].[Horario] ([HorarioID])
GO
ALTER TABLE [dbo].[FechaTurno] CHECK CONSTRAINT [FK_FechaTurno_Horario]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([IDProvincia])
REFERENCES [dbo].[Provincia] ([ProvinciaId])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Especialidad_Medico] FOREIGN KEY([IDEspecialidad])
REFERENCES [dbo].[Especialidad] ([EspecialidadId])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Especialidad_Medico]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Usuario]
GO
ALTER TABLE [dbo].[MedicoSucursal]  WITH CHECK ADD  CONSTRAINT [FK_MedicoSucursal_Medico] FOREIGN KEY([IDMedico])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[MedicoSucursal] CHECK CONSTRAINT [FK_MedicoSucursal_Medico]
GO
ALTER TABLE [dbo].[MedicoSucursal]  WITH CHECK ADD  CONSTRAINT [FK_MedicoSucursal_Sucursal] FOREIGN KEY([IDSucursal])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[MedicoSucursal] CHECK CONSTRAINT [FK_MedicoSucursal_Sucursal]
GO
ALTER TABLE [dbo].[NuevaContraseña]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_NuevaContraseña] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[NuevaContraseña] CHECK CONSTRAINT [FK_Usuario_NuevaContraseña]
GO
ALTER TABLE [dbo].[PlanObraSocial]  WITH CHECK ADD  CONSTRAINT [FK_Plan_ObraSocial] FOREIGN KEY([IDObraSocial])
REFERENCES [dbo].[ObraSocial] ([ObraSocialId])
GO
ALTER TABLE [dbo].[PlanObraSocial] CHECK CONSTRAINT [FK_Plan_ObraSocial]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Localidad] FOREIGN KEY([IDLocalidad])
REFERENCES [dbo].[Localidad] ([LocalidadId])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Localidad]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_FechaTurno] FOREIGN KEY([IDFechaTurno])
REFERENCES [dbo].[FechaTurno] ([FechaTurnoID])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_FechaTurno]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Localidad] FOREIGN KEY([IDLocalidad])
REFERENCES [dbo].[Localidad] ([LocalidadId])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_Localidad]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Medico] FOREIGN KEY([IDMedico])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_Medico]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Provincia] FOREIGN KEY([IDProvincia])
REFERENCES [dbo].[Provincia] ([ProvinciaId])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_Provincia]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Sucursal] FOREIGN KEY([IDSucursal])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_Sucursal]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Afiliado] FOREIGN KEY([IDAfiliado])
REFERENCES [dbo].[Afiliado] ([AfiliadoID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Afiliado]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil] FOREIGN KEY([IDPerfil])
REFERENCES [dbo].[Perfil] ([PerfilId])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil]
GO
