listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos


SELECT 
	P.NomeProduto,
	T.NomeTipoProduto,
	M.NomeMarca,
	P.ValorVenda
FROM
	Produto AS P INNER JOIN Marca AS M ON
		P.IdMarca = M.IdMarca
	INNER JOIN TipoProduto AS T ON
		P.IdTipoProduto = T.IdTipoProduto
	LEFT JOIN VendaItem AS VI ON
		P.IdProduto = VI.IdProduto
	WHERE VI.IdProduto IS NULL