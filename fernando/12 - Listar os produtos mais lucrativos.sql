12 - Listar os produtos mais lucrativos

listar o nome, marca, quantidade vendida e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) 
dos 10 produtos mais lucrativos (Somente produtos pagos)

SELECT TOP 10
	P.NomeProduto,
	M.NomeMarca,
	SUM (VI.Quantidade) AS QUANT,
   (P.ValorVenda - P.ValorCompra) * SUM (VI.Quantidade) AS LUCRO
	  
FROM 
	VENDA AS V INNER JOIN VendaItem AS VI ON
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto AS P ON
		VI.IdProduto = P.IdProduto
	INNER JOIN Marca AS M ON
		P.IdMarca = M.IdMarca
WHERE V.DataPagamento IS NOT NULL
GROUP BY M.NomeMarca, P.ValorVenda, P.ValorCompra, P.NomeProduto
ORDER BY LUCRO DESC