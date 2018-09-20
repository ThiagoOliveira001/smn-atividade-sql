/*
QUERY 20 - Listar todos os clientes e seu produto favorito
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o mes/ano, a quantidade total de produtos vendidos (pagos) 
--e a quantidade total de produtos vendidos (não pagos) no mes/ano de referencia
SELECT C.NomeCliente, C.Sexo, FLOOR(DATEDIFF(DAY, C.DataNascimento, GETDATE()) / 365.25) AS Idade , ISNULL(CA.NomeProduto, '')
FROM Cliente as C
OUTER APPLY(
	SELECT TOP 1 P.NomeProduto
	FROM Produto AS P
	INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
	INNER JOIN Venda AS V ON V.IdVenda= VI.IdVenda
	WHERE V.IdCliente=C.IdCliente
	GROUP BY P.NomeProduto
	ORDER BY SUM(VI.Quantidade) DESC	
) AS CA
order by C.NomeCliente
---------------------------------------------------------------------------------------


