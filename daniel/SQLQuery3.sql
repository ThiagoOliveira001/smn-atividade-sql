USE [LojaDoces]
GO

/****** Object:  Table [dbo].[Produto]    Script Date: 18/09/2018 16:19:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Produto](
	[IdProduto] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoProduto] [smallint] NOT NULL,
	[IdMarca] [smallint] NOT NULL,
	[NomeProduto] [varchar](50) NOT NULL,
	[ValorCompra] [decimal](4, 2) NOT NULL,
	[ValorVenda] [decimal](4, 2) NOT NULL,
	[QuantidadeEstoque] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NomeProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([IdMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO

ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([IdTipoProduto])
REFERENCES [dbo].[TipoProduto] ([IdTipoProduto])
GO


insert into [dbo].[Produto] ([IdTipoProduto],[IdMarca],[NomeProduto],[ValorCompra],[ValorVenda],[QuantidadeEstoque]) values
(1,35,'Ursinhos de jurubeba',2.50,7.00,15),
(1,35,'Canudinhos de gengibre',4.00,35.00,20),
(3,5,'Vodka do capeta',2.00,8.50,200),
(3,5,'Caçulinha',0.25,1.00,700),
(1,28,'Wallfer de paçoca',2.00,4.00,12),
(1,28,'Bolinho de chuva',0.10,0.50,500),
(1,28,'Fermento bilógico',1.00,5.00,100),
(5,1,'Chokito rosa',0.78,1.25,600),
(1,35,'Bala de café',0.10,1.00,100),
(3,5,'Cabeça de bugre',1.00,3.75,100),
(5,5,'Power açai',0.75,4.00,150),
(1,35,'Milhos açucarados',0.50,8.00,100),
(2,8,'Pastel de hamburguer',0.50,2.00,10),
(2,8,'Pastel de frango com presunto',0.50,2.00,10),
(2,8,'Pastel jacaré com queijo',1.25,4.00,10),
(2,8,'Pastel de tilapia',1.00,3.50,10),
(2,8,'Pastel de calabresa acebolada',0.75,2.50,10),
(2,8,'Pastel de esfira',0.75,2.50,10),
(5,5,'Power potato',0.35,2.00,10),
(5,5,'Biscoito de rin de rinoceronte',50.0,90.00,2)

