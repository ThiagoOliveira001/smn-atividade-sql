SELECT p.NomeProduto, tp.NomeTipoProduto, m.NomeMarca, p.ValorVenda 
FROM Produto AS p
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
INNER JOIN TipoProduto AS tp
  ON p.IdTipoProduto = tp.IdTipoProduto
LEFT JOIN VendaItem AS vi
  ON p.IdProduto = vi.IdProduto
WHERE vi.IdProduto IS NULL
ORDER BY tp.NomeTipoProduto
