USE [master]
GO
/****** Object:  Database [MariaDeStefano.GestioneStrutture]    Script Date: 18/02/2022 15:44:59 ******/
CREATE DATABASE [MariaDeStefano.GestioneStrutture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MariaDeStefano.GestioneStrutture', FILENAME = N'C:\Users\maria.de.stefano\MariaDeStefano.GestioneStrutture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MariaDeStefano.GestioneStrutture_log', FILENAME = N'C:\Users\maria.de.stefano\MariaDeStefano.GestioneStrutture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MariaDeStefano.GestioneStrutture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ARITHABORT OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET  MULTI_USER 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET QUERY_STORE = OFF
GO
USE [MariaDeStefano.GestioneStrutture]
GO
/****** Object:  Table [dbo].[Clienti]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clienti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[DataNascita] [date] NOT NULL,
	[IdStruttura] [int] NOT NULL,
 CONSTRAINT [PK__Clienti__3214EC07CDD065DF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pernottamento]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pernottamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Formula] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pernottamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdStruttura] [int] NOT NULL,
	[DataArrivo] [date] NOT NULL,
	[DataPartenza] [date] NOT NULL,
	[NumeroGiorni] [int] NOT NULL,
	[NumeroPersone] [int] NOT NULL,
 CONSTRAINT [PK__Prenotaz__3214EC07B8D36C6D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strutture]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strutture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](60) NOT NULL,
	[Città] [nvarchar](50) NOT NULL,
	[Stato] [nvarchar](50) NOT NULL,
	[IdTipologia] [int] NOT NULL,
	[IdPernottamento] [int] NOT NULL,
	[Servizio] [nvarchar](150) NOT NULL,
	[AnimaliAmmessi] [bit] NOT NULL,
	[CostoPersona] [float] NOT NULL,
 CONSTRAINT [PK_Strutture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipologie]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipologie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipologie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clienti] ON 

INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataNascita], [IdStruttura]) VALUES (15, N'Marco', N'De Stefano', CAST(N'1979-04-25' AS Date), 1)
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataNascita], [IdStruttura]) VALUES (16, N'Alessio', N'Ferraioli', CAST(N'1993-10-28' AS Date), 4)
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataNascita], [IdStruttura]) VALUES (17, N'Gennaro', N'Ferraioli', CAST(N'1979-02-07' AS Date), 3)
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataNascita], [IdStruttura]) VALUES (18, N'Barbara', N'Marchesi', CAST(N'1982-07-02' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Clienti] OFF
GO
SET IDENTITY_INSERT [dbo].[Pernottamento] ON 

INSERT [dbo].[Pernottamento] ([Id], [Formula]) VALUES (1, N'Solo Pernottamento')
INSERT [dbo].[Pernottamento] ([Id], [Formula]) VALUES (2, N'Pernottamento e Prima Colazione')
INSERT [dbo].[Pernottamento] ([Id], [Formula]) VALUES (3, N'Mezza Pensione')
INSERT [dbo].[Pernottamento] ([Id], [Formula]) VALUES (4, N'Pensione Completa')
SET IDENTITY_INSERT [dbo].[Pernottamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Prenotazioni] ON 

INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroGiorni], [NumeroPersone]) VALUES (1, 15, 1, CAST(N'2022-03-20' AS Date), CAST(N'2022-03-26' AS Date), 6, 4)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroGiorni], [NumeroPersone]) VALUES (2, 16, 2, CAST(N'2022-04-21' AS Date), CAST(N'2022-04-25' AS Date), 4, 1)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroGiorni], [NumeroPersone]) VALUES (3, 17, 4, CAST(N'2022-08-14' AS Date), CAST(N'2022-08-21' AS Date), 7, 2)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroGiorni], [NumeroPersone]) VALUES (4, 18, 3, CAST(N'2022-09-21' AS Date), CAST(N'2022-09-30' AS Date), 9, 3)
SET IDENTITY_INSERT [dbo].[Prenotazioni] OFF
GO
SET IDENTITY_INSERT [dbo].[Strutture] ON 

INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (1, N'La Fattoressa', N'Firenze', N'Italia', 1, 1, N'wifi,  cassaforte', 1, 60)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (2, N'La Fattoressa', N'Firenze', N'Italia', 1, 2, N'wifi,  cassaforte', 1, 90)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (3, N'La Fattoressa', N'Firenze', N'Italia', 1, 3, N'wifi,  cassaforte', 1, 75)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (4, N'La Fattoressa', N'Firenze', N'Italia', 1, 4, N'wifi,  cassaforte', 1, 120)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (5, N'Hotel Velvet Grey Boutique', N'Milano', N'Italia', 2, 1, N'wifi,  cassaforte, piscina', 0, 120)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (6, N'Hotel Velvet Grey Boutique', N'Milano', N'Italia', 2, 2, N'wifi,  cassaforte, piscina', 0, 210)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (7, N'Hotel Velvet Grey Boutique', N'Milano', N'Italia', 2, 3, N'wifi,  cassaforte, piscina', 0, 290)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (8, N'Hotel Velvet Grey Boutique', N'Milano', N'Italia', 2, 4, N'wifi,  cassaforte, piscina', 0, 340)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (9, N'Casa Farlisa', N'Scicli', N'Italia', 3, 1, N'wifi, piscina', 1, 220)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (10, N'Casa Farlisa', N'Scicli', N'Italia', 3, 2, N'wifi, piscina', 1, 290)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (11, N'Casa Farlisa', N'Scicli', N'Italia', 3, 3, N'wifi, piscina', 1, 320)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (12, N'Casa Farlisa', N'Scicli', N'Italia', 3, 4, N'wifi, piscina', 1, 400)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (13, N'Il soffio di Tifeo', N'Forio D''Ischia', N'Italia', 4, 1, N'cassaforte, wifi, piscina, spa', 0, 250)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (14, N'Il soffio di Tifeo', N'Forio D''Ischia', N'Italia', 4, 2, N'cassaforte, wifi, piscina, spa', 0, 300)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (15, N'Il soffio di Tifeo', N'Forio D''Ischia', N'Italia', 4, 3, N'cassaforte, wifi, piscina, spa', 0, 390)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia], [IdPernottamento], [Servizio], [AnimaliAmmessi], [CostoPersona]) VALUES (16, N'Il soffio di Tifeo', N'Forio D''Ischia', N'Italia', 4, 4, N'cassaforte, wifi, piscina, spa', 0, 450)
SET IDENTITY_INSERT [dbo].[Strutture] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipologie] ON 

INSERT [dbo].[Tipologie] ([Id], [Tipo]) VALUES (1, N'Agriturismo')
INSERT [dbo].[Tipologie] ([Id], [Tipo]) VALUES (2, N'Hotel')
INSERT [dbo].[Tipologie] ([Id], [Tipo]) VALUES (3, N'Casa Vacanze')
INSERT [dbo].[Tipologie] ([Id], [Tipo]) VALUES (4, N'Residence')
SET IDENTITY_INSERT [dbo].[Tipologie] OFF
GO
ALTER TABLE [dbo].[Clienti]  WITH CHECK ADD  CONSTRAINT [FK_Clienti_Strutture] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[Clienti] CHECK CONSTRAINT [FK_Clienti_Strutture]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_Strutture] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_Strutture]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [FK_Strutture_Pernottamento] FOREIGN KEY([IdPernottamento])
REFERENCES [dbo].[Pernottamento] ([Id])
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [FK_Strutture_Pernottamento]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [FK_Strutture_Tipologie] FOREIGN KEY([IdTipologia])
REFERENCES [dbo].[Tipologie] ([Id])
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [FK_Strutture_Tipologie]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [CHK_DataPartenza] CHECK  (([DataPartenza]>[DataArrivo]))
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [CHK_DataPartenza]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [CHK_TipologiaServizi] CHECK  (([CostoPersona]>(0)))
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [CHK_TipologiaServizi]
GO
/****** Object:  StoredProcedure [dbo].[mostra.Tipologie]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostra.Tipologie]
as
declare @IdtipoPernottamento nvarchar(60)
set @IdtipoPernottamento=2
select 
s.Nome,
s.Città,
s.Servizio,
p.Formula
from dbo.Strutture as s
join dbo.Pernottamento as p
on s.IdPernottamento=p.Id
where p.Id=@IdtipoPernottamento
GO
/****** Object:  StoredProcedure [dbo].[SceltaStruttura]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SceltaStruttura]
as

select distinct
 s.Nome,
 s.Città,
 s.CostoPersona,
 s.Servizio,
 p.DataArrivo,
 p.DataPartenza,
 p.NumeroPersone,
 --p.NumeroGiorni,
 cl.Nome,
 cl.Cognome,
 cl.DataNascita,
 
 PrezzoTotale=s.CostoPersona*p.NumeroPersone* Convert(int, DATEDIFF(day, p.DataPartenza, p.DataArrivo))

 

from dbo.Strutture   as s
join dbo.Prenotazioni as p
on p.IdStruttura=s.Id
join dbo.Clienti   as cl
on cl.Id=p.IdCliente
GO
/****** Object:  StoredProcedure [dbo].[StruttureConServizio1]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StruttureConServizio1]
as
declare @TipoServizio nvarchar(60)
set @TipoServizio='wifi, piscina'
select * from dbo.Strutture as s
where s.Servizio=@TipoServizio
GO
/****** Object:  StoredProcedure [dbo].[StruttureConServizio2]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StruttureConServizio2]
as
declare @TipoServizio nvarchar(60)
set @TipoServizio='wifi, piscina'
declare @TipoServizio1 nvarchar(60)
set @TipoServizio1='wifi,  cassaforte, piscina'
select * from dbo.Strutture as s
where s.Servizio=@TipoServizio
or s.Servizio=@TipoServizio1
GO
/****** Object:  StoredProcedure [dbo].[StrutturePernottamento]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StrutturePernottamento]
as
declare @IdTipoPernottamento int 
set @IdTipoPernottamento=4
select * from dbo.Strutture as s
where s.IdPernottamento=@IdTipoPernottamento
GO
/****** Object:  StoredProcedure [dbo].[StruttureTipo]    Script Date: 18/02/2022 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[StruttureTipo]
as
declare @IdTipologiaStrutture int
set @IdTipologiaStrutture=2
select * from dbo.Strutture  as s
where s.IdTipologia=@IdTipologiaStrutture
GO
USE [master]
GO
ALTER DATABASE [MariaDeStefano.GestioneStrutture] SET  READ_WRITE 
GO
