SELECT top 15 c.NomeCliente, c.Sexo, c.DataNascimento, SUM(vi.Quantidade) as 'Quantidade'
FROM VendaItem AS vi
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Cliente AS c
  ON v.IdCliente = c.IdCliente
WHERE v.DataPagamento < GETDATE()
AND v.DataPagamento IS NOT NULL
GROUP BY c.NomeCliente, c.Sexo, c.DataNascimento
ORDER BY Quantidade DESC

