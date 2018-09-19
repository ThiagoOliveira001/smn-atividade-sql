SELECT P.NomeProduto, SUM(VI.Quantidade) AS 'Quantidades Vendidas'
	FROM VendaItem AS VI
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	INNER JOIN Venda AS V
	ON VI.IdVenda = V.IdVenda
	WHERE DATEPART(YY, V.DataPagamento) = 2018
	GROUP BY P.NomeProduto