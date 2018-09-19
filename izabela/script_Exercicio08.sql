SELECT TOP 10 naoPagou.Nome, sum(naoPagou.Quantidade) as 'Quantidade não paga', naoPagou.DataVenda
	FROM 
	(SELECT c.NomeCliente AS Nome, c.Sexo, vi.Quantidade, v.DataVenda, DataPagamento
		FROM VendaItem AS vi
		INNER JOIN Venda AS v
		  ON vi.IdVenda = v.IdVenda
		INNER JOIN Cliente AS c
		  ON v.IdCliente = c.IdCliente
		WHERE v.DataPagamento IS NULL) AS naoPagou
	GROUP BY naoPagou.Nome, naoPagou.DataVenda