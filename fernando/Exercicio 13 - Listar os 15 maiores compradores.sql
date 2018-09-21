13 - Listar os 15 maiores compradores

listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)


SELECT TOP 15
	C.NomeCliente,
	C.Sexo,
	C.DataNascimento,
	SUM(VI.Quantidade) AS Quantidade_total		
FROM
	Cliente AS C INNER JOIN Venda V ON
		C.IdCliente = V.IdCliente
	INNER JOIN VendaItem AS VI ON
		V.IdVenda = VI.IdVenda
WHERE V.DataPagamento IS NOT NULL
GROUP BY C.NomeCliente,C.Sexo,C.DataNascimento
ORDER BY Quantidade_total desc



