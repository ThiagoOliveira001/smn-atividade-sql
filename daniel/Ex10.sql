
select	nomeproduto,
		nomemarca,
		nomecliente,
		Produto.ValorVenda,
		Produto.ValorCompra,
		datavenda
from Produto
	cross apply (select top (1)nomecliente,nomemarca,valorvenda,valorcompra,datavenda from vendaitem
	inner join Marca on Marca.idmarca= Produto.idmarca
	inner join Venda on Venda.idvenda=vendaitem.idvenda
	inner join Cliente  on Cliente.idcliente=Venda.idcliente

	where vendaitem.idproduto=Produto.idproduto
	Order by DataVenda DESC) as tabela
	--Ex11

	select Marca.NomeMarca,
			Produto.QuantidadeEstoque
			from Produto
			inner join Marca on Marca.IdMarca=Produto.IdProduto

	--Ex12
	select top (10)	Produto.NomeProduto,
					Marca.NomeMarca,
					VendaItem.Quantidade,
					((Produto.Valorvenda-Produto.ValorCompra)*VendaItem.Quantidade) as 'Lucro'
					from Produto
					inner join Marca on Marca.IdMarca= Produto.IdMarca
					inner join VendaItem on VendaItem.Quantidade=Produto.IdProduto
					inner join Venda on Venda.IdVenda=VendaItem.IdVenda

					where Venda.DataPagamento is not null
					group by Produto.NomeProduto,Marca.NomeMarca,VendaItem.Quantidade,Produto.ValorCompra,Produto.ValorVenda
					order by Lucro DESC

	--Ex13
	Select top(15)	Cliente.NomeCliente,
					Cliente.Sexo,
					Cliente.DataNascimento,
					VendaItem.Quantidade
					from Cliente
					inner join VendaItem on VendaItem.Quantidade=Cliente.IdCliente
					inner join Venda on Venda.IdVenda=VendaItem.IdVenda
					where Venda.DataPagamento is not null

	--Ex14
	Select Produto.NomeProduto
			from Produto
			where NomeProduto like '%cola%'

	--Ex15
	select Cliente.NomeCliente,
			Cliente.Sexo,
			Cliente.DataNascimento
			from Cliente
			where Ativo=1
	--Ex16
	Select Produto.NomeProduto,
			TipoProduto.NomeTipoProduto,
			Marca.NomeMarca,
			Produto.valorvenda
			from produto
			inner join TipoProduto on TipoProduto.IdTipoProduto=Produto.IdTipoProduto
			inner join Marca on Marca.IdMarca=Produto.IdMarca
			inner join VendaItem on VendaItem.IdProduto=Produto.IdProduto
			inner join Venda on Venda.IdVenda=VendaItem.IdVenda
			where venda.DataVenda is not null
	--Ex17
	select top(10)
			Produto.NomeProduto,
			Marca.NomeMarca,
			Produto.ValorCompra,
			Produto.ValorVenda,
			produto.QuantidadeEstoque
			from Produto
			inner join Marca on Marca.IdMarca=Produto.IdMarca
			inner join VendaItem on VendaItem.Quantidade=Produto.IdProduto
			inner join Venda on Venda.IdVenda=VendaItem.IdVenda
			order by VendaItem.Quantidade

	--Ex18
		
		select Marca.NomeMarca,
				SUBSTRING(Produtos,1,LEN(Produtos)-1)
				from Marca
				cross apply (
					 select (Produto.NomeProduto + ',')
					 from Produto
					 where Marca.IdMarca=Produto.IdMarca
					 for xml path ('')
				)ap (Produtos)

	--EX19

		select MONTH(V.DataVenda)as Mes,
				YEAR(V.Datavenda)as Ano,
					sum(CASE when V.datapagamento is null then 1
						else 0
						end) as NaoPago,
					sum (CASe when v.datapagamento is not null then 1
						else 0
						end) as Pago
							from Venda as v
						inner join vendaitem on vendaitem.idvenda=v.idvenda
						group by MONTH(v.DataVenda),YEAR(v.DataVenda)
						order by Ano DESC

	--Ex20
	SELECT c.NomeCliente,
	   c.Sexo,
	   ISNULL(ap.NomeProduto,'') AS NomeProduto,
	   ISNULL(ap.Compra,'') AS Favorito,
	   FLOOR(DATEDIFF(day, c.DataNascimento, GETDATE()) / 365.25) AS Idade
FROM Cliente AS c
	OUTER APPLY(
		SELECT TOP(1) 
			p.NomeProduto,
			COUNT(vi.IdProduto) AS Compra
		FROM Produto AS p
			INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
			INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
		WHERE v.IdCliente = c.IdCliente
		GROUP BY p.NomeProduto
		ORDER BY Compra DESC
	) ap
ORDER BY c.NomeCliente ASC
	--Ex21
		
	
 SELECT	p.NomeProduto,
		m.NomeMarca,
		CAST((CAST(COUNT(DISTINCT c.IdCliente) AS DECIMAL(10,2))/CAST((SELECT COUNT(c1.IdCliente) FROM Cliente c1) AS decimal(10,2)))*100 AS DECIMAL(10,2)) AS '%'
		FROM Produto p
		INNER JOIN VendaItem vi
			ON p.IdProduto = vi.IdProduto
		INNER JOIN Venda v
			ON v.IdVenda = vi.IdVenda
		INNER JOIN Cliente c
			ON c.IdCliente = v.IdCliente
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca
		GROUP BY p.NomeProduto, m.NomeMarca
		ORDER BY NomeProduto

	--Ex22
	SELECT	c.NomeCliente,
		c.Sexo,
		AVG(DATEDIFF(day, v.DataVenda, v.DataPagamento)) AS Tempo
		FROM Cliente c
		INNER JOIN Venda v
			ON c.IdCliente = v.IdCliente
		WHERE v.DataPagamento IS NOT NULL
		GROUP BY c.NomeCliente, c.Sexo

	--Ex23
