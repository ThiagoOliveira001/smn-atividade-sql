/*
QUERY 24 - Listar m�dia mensal de vendas
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 21/09/2018
*/

--Listar m�s/ano e m�dia mensal de vendas no m�s/ano de referencia. M�dia em valor e quantidade.
SELECT DATENAME(MONTH,V.DataVenda) AS M�s, YEAR(V.DataVenda) AS Ano, 
AVG(VI.Quantidade) AS 'M�dia Quantidade', CAST(AVG(P.ValorVenda*VI.Quantidade) AS DECIMAL(10,2)) AS 'M�dia Valor'
FROM Venda AS V
INNER JOIN VendaItem AS VI ON VI.IdVenda = V.IdVenda
INNER JOIN Produto AS P ON P.IdProduto = VI.IdProduto
GROUP BY DATENAME(MONTH,V.DataVenda), YEAR(V.DataVenda) 
---------------------------------------------------------------------------------------





