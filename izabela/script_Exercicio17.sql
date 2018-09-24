/*
	Listar os produtos mais vendidos
	listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos
*/

SELECT TOP 10 p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda, p.QuantidadeEstoque
FROM VendaItem AS vi
INNER JOIN Produto p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
GROUP BY p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda, p.QuantidadeEstoque
ORDER BY SUM(vi.Quantidade) DESC
