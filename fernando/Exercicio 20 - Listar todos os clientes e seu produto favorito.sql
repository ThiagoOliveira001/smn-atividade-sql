listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco


SELECT 
	C.NomeCliente,
	C.Sexo,
	FLOOR(DATEDIFF(DAY, DataNascimento, GETDATE()) / 365.25) as Idade,
	P.NomeProduto,
	SUM(VI.Quantidade) as Quantidade
FROM
	Cliente AS C INNER JOIN Venda AS V ON
		C.IdCliente = V.IdCliente
	INNER JOIN VendaItem AS VI ON
		V.IdVenda = VI.IdVenda
	INNER JOIN Produto AS P ON
		VI.IdProduto = P.IdProduto
GROUP BY C.NomeCliente,C.Sexo,c.DataNascimento,P.NomeProduto
ORDER BY C.NomeCliente

		 
		
