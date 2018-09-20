--listar o nome do produto, marca e porcentagem dos clientes que compraram. 
--EX: nome produto: laka, 41% dos usuarios compram(vendas pagas)

DECLARE @QuantidadeCl int
SELECT @QuantidadeCl = COUNT(IdCliente) FROM Cliente
PRINT @QuantidadeCl


SELECT P.NomeProduto, M.NomeMarca,  CAST(ROUND(((CAST(COUNT(OA.IdCliente) AS DECIMAL) * 100) / @QuantidadeCl), 2) AS DECIMAL(10,2)) AS Porcentagem
	FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	OUTER APPLY (
		SELECT C.idCliente
			FROM Cliente AS C
			INNER JOIN Venda AS V
			ON C.IdCliente = V.IdCliente
			INNER JOIN VendaItem AS VI
			ON V.IdVenda = VI.IdVenda
			WHERE VI.IdProduto = P.IdProduto AND V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
			GROUP BY C.IdCliente) AS OA
		GROUP BY P.NomeProduto, M.NomeMarca