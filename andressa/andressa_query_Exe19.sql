/*
QUERY 19 - Listar o total de vendas por mes
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o mes/ano, a quantidade total de produtos vendidos (pagos) 
--e a quantidade total de produtos vendidos (não pagos) no mes/ano de referencia

SELECT	MONTH(V.DataVenda) AS Mes, YEAR(V.DataVenda) AS Ano,
		 
		SUM(
		CASE WHEN V.DataPagamento IS NULL AND V.DataPagamento> GETDATE() THEN 1
		ELSE 0
		END) AS NãoPago,

		SUM(
		CASE WHEN V.DataPagamento IS NOT NULL AND V.DataPagamento< GETDATE() THEN 1
		ELSE 0
		END) AS Pago
		
		FROM Venda AS V
		INNER JOIN VendaItem AS VI ON VI.IdVenda = V.IdVenda
		GROUP BY MONTH(V.DataVenda),YEAR(V.DataVenda)
		ORDER BY Ano DESC
---------------------------------------------------------------------------------------

