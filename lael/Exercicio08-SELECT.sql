--listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga

--SELECT * FROM Cliente where nomeCliente = 'Joaquim Levi César de Paula'

--SELECT * FROM Venda WHERE DataPagamento IS NULL and idCliente = 136

--SELECT * FROM VendaItem where idVenda in (
--1076
--,1077
--,1078
--,1079
--,1334
--,1335
--,1336
--,1337
--,1384
--,1385
--,1386
--,1387)

SELECT TOP(10) c.NomeCliente, c.Sexo,  
			SUM(Vi.Quantidade) AS 'Itens',
			MIN(V.DataVenda) AS 'Primeira Venda'
	FROM VendaItem AS Vi
		INNER JOIN Venda As V
			ON vi.IdVenda = V.IdVenda
		INNER JOIN Cliente AS C
			ON V.IdCliente = C.IdCliente
	WHERE v.DataPagamento   IS NULL 
	GROUP BY c.NomeCliente, c.Sexo, V.DataVenda
	ORDER BY Itens DESC