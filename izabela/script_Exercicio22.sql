/*
	Listar os top 10 clientes que pagam.
	Listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar
*/
SELECT TOP(10)	cl.NomeCliente, 
				cl.Sexo, 
				AVG(DATEDIFF(MINUTE, ve.DataVenda, ve.DataPagamento)) as 'Média dia'
	FROM Venda ve WITH(NOLOCK)
	INNER JOIN Cliente cl WITH(NOLOCK)
	ON ve.IdCliente = cl.IdCliente
	WHERE ve.DataPagamento is not null and ve.DataPagamento <= GETDATE()
	GROUP BY cl.NomeCliente, cl.Sexo
	ORDER BY [Média dia] 
