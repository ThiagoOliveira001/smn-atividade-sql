SELECT c.NomeCliente, v.DataVenda, ca.VG AS 'Valor Gasto',
	   CONVERT(varchar(60), SUM(ca.VG) OVER (PARTITION BY c.NomeCliente ORDER BY v.IdVenda), 1) AS 'Valor Acumulado'
FROM Cliente AS c
INNER JOIN Venda AS v
  ON v.IdCliente = c.IdCliente
CROSS APPLY (SELECT
  SUM(vi.Quantidade * p.ValorVenda) AS 'VG'
FROM VendaItem AS vi
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Venda AS v2
  ON vi.IdVenda = v2.IdVenda
WHERE v2.IdVenda = v.IdVenda) AS ca
GROUP BY c.NomeCliente, v.DataVenda, ca.VG, v.IdVenda
ORDER BY c.NomeCliente