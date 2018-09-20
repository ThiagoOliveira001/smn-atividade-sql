--listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos

SELECT P.NomeProduto, TP.NomeTipoProduto, M.NomeMarca, P.ValorVenda
	FROM Produto AS P
		INNER JOIN TipoProduto AS TP
		ON P.IdTipoProduto = TP.IdTipoProduto

		INNER JOIN Marca AS M
		ON P.IdMarca = M.IdMarca

CROSS APPLY(
SELECT V.DataVenda
		INNER JOIN Venda AS V
		ON V.IdVenda = P.IdProduto
	WHERE V.DataPagamento IS NULL)

SELECT * FROM Produto