SELECT TOP 10 p.NomeProduto, m.NomeMarca, SUM(vi.Quantidade) AS 'Quantidade', (p.ValorVenda - p.ValorCompra) * (vi.Quantidade) AS 'Lucro'
FROM VendaItem AS vi
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
WHERE v.DataPagamento < GETDATE()
AND v.DataPagamento IS NOT NULL
GROUP BY p.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra, vi.Quantidade
ORDER BY Lucro DESC