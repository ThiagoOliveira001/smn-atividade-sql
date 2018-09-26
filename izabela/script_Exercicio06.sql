/*
	Listar produtos e quantidade vendidos em 2018
	Listar o nome do produto e quantidade
*/

SELECT	p.NomeProduto AS 'Nome',
		SUM(vi.Quantidade) AS 'Quantidade'
	FROM [dbo].[VendaItem] vi
	INNER JOIN [dbo].[Produto] p
	  ON vi.IdProduto = p.IdProduto
	INNER JOIN [dbo].[Venda] v
	  ON vi.IdVenda = v.IdVenda
	WHERE v.DataVenda BETWEEN '01/01/2018 00:00:00' AND '12/31/2018 23:59:59'
	GROUP BY p.NomeProduto
