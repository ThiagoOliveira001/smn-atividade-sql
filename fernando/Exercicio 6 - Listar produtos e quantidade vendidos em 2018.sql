--Listar o nome do produto e quantidade


SELECT
	P.NomeProduto, VI.Quantidade, SUM(VI.QUANTIDADE) AS Somatório
FROM
	Produto AS P INNER JOIN VendaItem AS VI ON
		P.IdProduto = VI.IdProduto
	INNER JOIN Venda AS V ON
		VI.IdVenda = V.IdVenda
WHERE YEAR(V.DataVenda) = 2018	
GROUP BY P.NomeProduto, VI.Quantidade

