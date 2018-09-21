/*
QUERY 23 - Listar o valor gasto acumulado por cliente e data
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 21/09/2018
*/

--Listar o valor gasto acumulado por cliente e data

SELECT C.IdCliente, V2.IdVenda, C.NomeCliente, V2.DataVenda, CA.Valor,
CONVERT(VARCHAR(20),SUM(CA.Valor) OVER(PARTITION BY C.NomeCliente ORDER BY V2.IdVenda),1) AS 'Valor Acumulado' 
FROM Cliente AS C
INNER JOIN Venda AS V2 ON V2.IdCliente = C.IdCliente
CROSS APPLY(
SELECT SUM(VI.Quantidade * P.ValorVenda) AS Valor
FROM Produto AS P
INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
INNER JOIN Venda AS V ON V.IdVenda = VI.IdVenda
WHERE V.IdVenda = V2.IdVenda
)AS CA
GROUP BY C.IdCliente, V2.IdVenda, C.NomeCliente, V2.DataVenda, CA.Valor
---------------------------------------------------------------------------------------