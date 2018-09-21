22 - Listar os top 10 clientes que pagam mais rapido

listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar


SELECT TOP 10
	C.NomeCliente,
	C.Sexo,
	ISNULL(AVG(DATEDIFF( DAY , V.DataVenda , V.DataPagamento )),0) AS 'MEDIA'
FROM
	Cliente as C INNER JOIN Venda AS V ON
		C.IdCliente = V.IdCliente
	GROUP BY C.NomeCliente,C.Sexo
	ORDER BY 'MEDIA' ASC
