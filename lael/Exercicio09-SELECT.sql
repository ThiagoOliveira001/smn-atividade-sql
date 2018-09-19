--listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.

SELECT * FROM Marca

SELECT * FROM VendaItem
SELECT * FROM Venda

SELECT * FROM Produto

SELECT (SUM((p.ValorVenda) - (p.ValorCompra)) * SUM(Vi.Quantidade)) AS 'lucro', SUM(vi.Quantidade), m.NomeMarca
FROM Produto AS p
	INNER JOIN Marca AS m
		ON P.IdMarca = m.IdMarca
	INNER JOIN VendaItem AS vi
		ON vi.IdProduto = p.IdProduto
	GROUP BY m.NomeMarca
	ORDER BY lucro



