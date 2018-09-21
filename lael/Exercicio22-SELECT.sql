--listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar

SELECT TOP (10) C.NomeCliente, C.Sexo, AVG(DATEDIFF(MINUTE, V.DataVenda, V.DataPagamento))  AS 'Media', 
										AVG(DATEDIFF(HOUR, V.DataVenda, V.DataPagamento)) AS 'MediaHora', 
										AVG(DATEDIFF(DAY, V.DataVenda, V.DataPagamento)) AS 'MediaDia'
FROM Cliente AS C
	INNER JOIN Venda AS V
	ON C.IdCliente = V.IdCliente
	WHERE V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
	GROUP BY C.NomeCliente, C.Sexo
	ORDER BY Media