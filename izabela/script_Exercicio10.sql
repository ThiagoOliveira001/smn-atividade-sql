SELECT ca.NomeCliente, p.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra, ca.DataVenda
FROM Produto AS p
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
CROSS APPLY (SELECT TOP 1
  DataVenda,
  NomeCliente
FROM VendaITem AS vi
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
INNER JOIN Cliente AS c
  ON v.IdCliente = c.IdCliente
WHERE vi.IdProduto = p.IdProduto
ORDER BY DataVenda DESC) ca
