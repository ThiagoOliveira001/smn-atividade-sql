SELECT TOP 10 p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda, p.QuantidadeEstoque
FROM VendaItem AS vi
INNER JOIN Produto p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
GROUP BY p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda, p.QuantidadeEstoque
ORDER BY SUM(vi.Quantidade) DESC
