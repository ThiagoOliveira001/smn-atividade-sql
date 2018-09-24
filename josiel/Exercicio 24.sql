SELECT FORMAT(V.DataVenda, 'yyyy/MM') As AnoMes, AVG(VI.Quantidade) AS 'Media Quantidade',
	CAST(AVG(P.ValorVenda * VI.Quantidade) AS numeric(15,2)) AS 'Media Valor'
	FROM VendaItem AS VI
	INNER JOIN Venda AS V
	ON VI.IdVenda = V.IdVenda
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	GROUP BY FORMAT(V.DataVenda, 'yyyy/MM')