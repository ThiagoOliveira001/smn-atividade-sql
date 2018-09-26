/*
	Listar o total de vendas por mes
	listar o mes/ano,  a quantidade total de vendas (pagas) e a quantidade total de vendas (não pagas) no mes/ano de referencia
*/

SELECT	FORMAT(ve.DataVenda, 'yyyy/MM') AS Mes_Ano,
	SUM(CASE
	WHEN
		ve.DataPagamento IS NULL OR ve.DataPagamento > GETDATE() THEN 1
	ELSE 0
	END) AS NaoPago,

	SUM(CASE
	WHEN
		ve.DataPagamento IS NOT NULL AND ve.DataPagamento <= GETDATE() THEN 1
	ELSE 0
	END) AS Pago

	FROM Venda ve WITH(NOLOCK)
	GROUP BY FORMAT(ve.DataVenda, 'yyyy/MM')