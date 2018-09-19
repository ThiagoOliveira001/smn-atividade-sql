--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018

SELECT DISTINCT
	C.NomeCliente, 
	P.NomeProduto
FROM
	Cliente AS C INNER JOIN Venda AS V ON	
		C.IdCliente = V.IdCliente
	INNER JOIN VendaItem as VI ON
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto AS P ON
		VI.IdProduto = P.IdProduto
WHERE YEAR(V.DataVenda) = 2018 
ORDER BY NomeCliente
	 