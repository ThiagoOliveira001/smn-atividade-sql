listar mês/ano e média mensal de vendas no mês/ano de referencia.
Média em valor e quantidade.

SELECT
	FORMAT(V.DataVenda,'MM/yyyy') as Referência,
	AVG(VI.Quantidade) as media_quantidade,
	CAST(AVG(VI.Quantidade * P.ValorVenda) AS numeric (5,2)) as media_valor
FROM
	Venda AS V INNER JOIN VendaItem AS VI ON
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto AS P ON
		VI.IdProduto = P.IdProduto
	GROUP BY FORMAT(V.DataVenda,'MM/yyyy') 



