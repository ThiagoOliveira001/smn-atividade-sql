use LojaDoces

-- EXERCICIO 21
--Listar os produtos e porcentagem dos clientes que compraram
--listar o nome do produto, marca e porcentagem dos clientes que compraram. EX: nome produto: laka, 41% dos usuarios compram(vendas pagas)

SELECT (
	p.NomeProduto + ': ' +
	m.NomeMarca + ', ' +
	FORMAT((CAST(ap.Clientes AS NUMERIC) / CAST((SELECT COUNT(*) FROM Cliente) AS NUMERIC)) * 100, '#0.00') +  '% dos usuarios compram')
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
CROSS APPLY(
	SELECT COUNT(DISTINCT cL.IdCliente) AS Clientes
	FROM Cliente AS cL
		INNER JOIN Venda AS v ON v.IdCliente = cL.IdCliente
		INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
	WHERE vi.IdProduto = p.IdProduto AND v.DataPagamento IS NOT NULL
) ap
ORDER BY p.NomeProduto ASC

--EXERCICIO 22
--Listar os top 10 clientes que pagam mais rapido
--listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar

SELECT cl.NomeCliente, cl.Sexo, ISNULL(AVG(DATEDIFF(day,v.DataPagamento,v.DataVenda)/2),0) AS TEMPO FROM Cliente AS cl  -- select dateadd(day,(datediff(dd,@data1,@data2)/2),@data1)
INNER JOIN Venda AS v ON v.IdCliente = cl.IdCliente
GROUP BY cl.NomeCliente, cl.Sexo, v.DataPagamento, v.DataVenda

--EXERCICIO23
--Listar o valor gasto acumulado por cliente e data

SELECT cl.NomeCliente, v.DataVenda, ap.gasto, SUM(ap.gasto) 
OVER(
		PARTITION BY cl.NomeCliente
		ORDER BY cl.NomeCliente,v.DataVenda ASC
	) AS Acumulado FROM Cliente AS cL
		INNER JOIN Venda AS v ON v.IdCliente = cl.IdCliente
CROSS APPLY( 
	SELECT  SUM((vi.Quantidade * p.ValorVenda)) AS gasto FROM VendaItem AS vi
		INNER JOIN Produto AS p ON p.IdProduto = vi.IdProduto
	WHERE vi.IdVenda = v.idVenda
	GROUP BY vi.IdVenda
) ap
GROUP BY cl.idCliente,cl.NomeCliente,v.IdVenda,v.DataVenda,v.IdVenda,ap.gasto
ORDER BY cl.NomeCliente,v.DataVenda ASC


-- Exercico 24
--Listar média mensal de vendas
SELECT  FORMAT(v.DataVenda,'MM/yyyy') AS DataAlvo, 
	AVG(vi.Quantidade) AS MediaQtde,
	FORMAT(AVG((p.ValorVenda * vi.Quantidade)), '#0.00') AS MediaValor
FROM VendaItem AS vi
	INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
	INNER JOIN Produto AS p ON p.IdProduto = vi.IdProduto
GROUP BY FORMAT(v.DataVenda,'MM/yyyy')
ORDER BY DataAlvo ASC;