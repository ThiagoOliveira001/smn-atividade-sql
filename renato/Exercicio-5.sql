-- 05 - Listar clientes e quantidade comprado em 2018
-- Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018


USE LojaDoces

SELECT	Result.Nomes,
		COUNT(Result.Prod) as Qtde
		FROM (
			SELECT	c.NomeCliente AS Nomes,
					vi.IdProduto AS Prod
					FROM VendaItem vi
					INNER JOIN Venda v
						ON vi.IdVenda = v.IdVenda
					INNER JOIN Cliente c
						ON v.IdCliente = c.IdCliente
					WHERE YEAR(v.DataVenda) = 2018
					GROUP BY c.NomeCliente, vi.IdProduto
			) AS Result
		GROUP BY Result.Nomes
		ORDER BY Result.Nomes