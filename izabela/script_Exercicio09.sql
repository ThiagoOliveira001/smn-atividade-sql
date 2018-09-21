/*
	Listar o total de vendas pagas por marca
	listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.
*/

SELECT m.NomeMarca, sum(vi.Quantidade) as 'Quantidade', (sum(p.ValorVenda) - sum(p.ValorCompra))  * SUM(vi.Quantidade) as 'Lucro'
FROM VendaItem AS vi
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Marca AS m
  ON p.IdMarca = m.IdMarca
GROUP BY m.NomeMarca
ORDER BY Lucro
