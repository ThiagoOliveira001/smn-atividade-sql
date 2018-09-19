--listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.

SELECT 
	M.NomeMarca,
	 (SUM(P.ValorVenda) - SUM(P.ValorCompra)) * SUM (VI.Quantidade) AS LUCRO,
	  SUM(VI.Quantidade)
FROM 
	VENDA AS V INNER JOIN VendaItem AS VI ON
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto AS P ON
		VI.IdProduto = P.IdProduto
	INNER JOIN Marca AS M ON
		P.IdMarca = M.IdMarca
WHERE V.DataPagamento IS NOT NULL
GROUP BY M.NomeMarca
ORDER BY LUCRO











