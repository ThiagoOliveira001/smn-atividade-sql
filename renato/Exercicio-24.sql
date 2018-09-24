--24 - Listar média mensal de vendas
--listar mês/ano e média mensal de vendas no mês/ano de referencia.
--Média em valor e quantidade

USE LojaDoces

SELECT	FORMAT (v.DataVenda, 'yyyy/MM') AS Datas,
		CAST(AVG(p.ValorVenda * vi.Quantidade) AS NUMERIC (5,2)) AS M_Valor,
		AVG(vi.Quantidade) AS M_Qtde
		FROM Venda v
		INNER JOIN VendaItem vi
			ON v.IdVenda = vi.IdVenda
		INNER JOIN Produto p
			ON p.IdProduto = vi.IdProduto
		GROUP BY FORMAT (v.DataVenda, 'yyyy/MM')
		ORDER BY Datas DESC