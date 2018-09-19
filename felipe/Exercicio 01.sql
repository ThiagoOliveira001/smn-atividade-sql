use LojaDoces
go

select p.NomeProduto as Produto, m.Nomemarca as Marca,p.QuantidadeEstoque
	from Produto as p 
	inner join Marca as m on P.IdMarca = m.IdMarca
	inner join TipoProduto as tp on tp.IdTipoProduto =p.IdTipoProduto
	where tp.NomeTipoProduto like 'Chocolate'