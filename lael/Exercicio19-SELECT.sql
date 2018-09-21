--listar o mes/ano, a quantidade total de vendas (pagas) 
--e a quantidade total de vendas (não pagas) no mes/ano de referencia

SELECT  FORMAT (v.DataVenda, 'MM/yyyy') AS 'Data',	
		COUNT(CASE WHEN 
			v.DataPagamento IS NULL THEN 1
			ELSE
			0
		END) AS NãoPago,

		COUNT (CASE WHEN 
			V.DataPagamento IS NOT NULL THEN 1
			ELSE
			0
		END) AS Pago 

	   FROM Venda AS v
	   GROUP BY FORMAT (v.DataVenda, 'MM/yyyy'), FORMAT (v.DataVenda, 'yyyy')
	   ORDER BY FORMAT (v.DataVenda, 'yyyy')
