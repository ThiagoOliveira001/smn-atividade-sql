--13 Listar os 15 maiores compradores
--listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)

SELECT TOP 15	c.NomeCliente,
		c.Sexo,
		c.DataNascimento,
		SUM(vi.Quantidade) AS QtdeComprada
		FROM Cliente c
		INNER JOIN Venda v
			ON c.IdCliente = v.IdCliente
		INNER JOIN VendaItem vi
			ON v.IdVenda = vi.IdVenda
		GROUP BY c.NomeCliente, c.Sexo, c.DataNascimento
		ORDER BY QtdeComprada DESC