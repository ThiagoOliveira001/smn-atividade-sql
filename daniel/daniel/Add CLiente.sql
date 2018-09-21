USE [LojaDoces]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 18/09/2018 15:48:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NomeCliente] [varchar](60) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[DataNascimento] [date] NOT NULL,
	[Ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NomeCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


insert into [dbo].[Cliente]([NomeCliente],[Sexo],[DataNascimento],[Ativo]) values
('Daniel godofredo','m','18000125',1),
('Eduardo rubilio','m','19950513',1),
('Yugimoto','m','12550303',1),
('Hatake Kakashi','m','19970205',1),
('Marcos Vanessa','f','20000101',1),
('Robson','m','19800209',1),
('Márcio Igor Lopes','m','19960305',1),
('Tiago André Kevin Farias','m','19960405',1),
('Benedito Raul Cardoso','m','19960708',1),
('Pedro Raul Jorge Pinto','m','19961212',0),
('Roberto Ryan Pereira','m','19960925',0),
('Mariane Nina Brenda Caldeira','f','19991202',1),
('Aparecida Jaqueline Isabel Souza','f','20010204',0),
('Nair Gabriela Monteiro','f','20000416',0),
('Lübu ','m','19900207',0),
('Camila Juliana Agatha Lopes','f','19950301',1),
('Bárbara Lívia Silva','f','20010305',0),
('Bárbara Torres','f','19850204',1),
('Bárbara Perreira','f','19950304',1),
('Bárbara Silva','f','20020609',0)
 

 select * from [dbo].[Cliente]
 select * from [Marca]
 select * from [TipoProduto]
 select * from [Produto]