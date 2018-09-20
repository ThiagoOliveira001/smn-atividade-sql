-- 22 - Listar os top 10 clientes que pagam mais rapido
-- listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar

USE LojaDoces

SELECT	c.NomeCliente,
		c.Sexo,
		AVG(DATEDIFF(day, v.DataVenda, v.DataPagamento)) AS Tempo
		FROM Cliente c
		INNER JOIN Venda v
			ON c.IdCliente = v.IdCliente
		WHERE v.DataPagamento IS NOT NULL
		GROUP BY c.NomeCliente, c.Sexo