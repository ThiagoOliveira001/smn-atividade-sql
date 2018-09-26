/*
	Listar os 15 maiores compradores
	listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)
*/

SELECT TOP(15)	cl.NomeCliente,
				cl.Sexo,
				cl.DataNascimento,
				SUM(vi.Quantidade) as 'Quantidade'
	FROM VendaItem vi WITH(NOLOCK)
	INNER JOIN Venda ve WITH(NOLOCK)
	  ON vi.IdVenda = ve.IdVenda
	INNER JOIN Produto pr WITH(NOLOCK)
	  ON vi.IdProduto = pr.IdProduto
	INNER JOIN Cliente cl WITH(NOLOCK)
	  ON ve.IdCliente = cl.IdCliente
	WHERE ve.DataPagamento <= GETDATE()
		AND ve.DataPagamento IS NOT NULL
	GROUP BY cl.NomeCliente, cl.Sexo, cl.DataNascimento
	ORDER BY Quantidade DESC

