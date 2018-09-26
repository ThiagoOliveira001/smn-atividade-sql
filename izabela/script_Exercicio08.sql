/*
	Listar os top 10 inadimplentes
	listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga
*/

SELECT TOP(10) naoPagou.Nome,
			naoPagou.Sexo,
			SUM(naoPagou.Quantidade) as 'Quantidade não paga', 
			MIN(naoPagou.DataVenda)
	FROM 
	(SELECT c.NomeCliente AS Nome, c.Sexo, vi.Quantidade, v.DataVenda, DataPagamento
		FROM VendaItem vi WITH(NOLOCK)
		INNER JOIN Venda v WITH(NOLOCK)
		  ON vi.IdVenda = v.IdVenda
		INNER JOIN Cliente c WITH(NOLOCK)
		  ON v.IdCliente = c.IdCliente
		WHERE v.DataPagamento IS NULL) AS naoPagou
	GROUP BY naoPagou.Nome, naoPagou.DataVenda, naoPagou.Sexo
	order by naoPagou.Nome