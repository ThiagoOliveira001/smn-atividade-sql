/*
QUERY 24 - Listar média mensal de vendas
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 21/09/2018
*/

--Listar mês/ano e média mensal de vendas no mês/ano de referencia. Média em valor e quantidade.
SELECT DATENAME(MONTH,V.DataVenda) AS Mês, YEAR(V.DataVenda) AS Ano, 
AVG(VI.Quantidade) AS 'Média Quantidade', CAST(AVG(P.ValorVenda*VI.Quantidade) AS DECIMAL(10,2)) AS 'Média Valor'
FROM Venda AS V
INNER JOIN VendaItem AS VI ON VI.IdVenda = V.IdVenda
INNER JOIN Produto AS P ON P.IdProduto = VI.IdProduto
GROUP BY DATENAME(MONTH,V.DataVenda), YEAR(V.DataVenda) 
---------------------------------------------------------------------------------------





