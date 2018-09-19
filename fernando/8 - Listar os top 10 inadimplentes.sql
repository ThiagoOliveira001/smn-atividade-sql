listar o nome do cliente, sexo, quantidade de itens n�o pagos e data da primeira compra n�o paga


SELECT TOP 10
	C.NomeCliente,
	C.Sexo,
	SUM(VI.Quantidade) AS 'N�o Pagos',
	V.DataVenda,
	VI.Quantidade
FROM 
	Cliente AS C INNER JOIN Venda AS V ON
		C.IdCliente = V.IdCliente
	INNER JOIN VendaItem AS VI ON 
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto as P on
		VI.IdProduto = P.IdProduto
WHERE V.DataPagamento IS NULL
GROUP BY C.NomeCliente, C.Sexo, VI.Quantidade, V.DataVenda
ORDER BY VI.Quantidade

	