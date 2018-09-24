/*
	Listar produtos e quantidade vendidos em 2018
	Listar o nome do produto e quantidade
*/

SELECT p.NomeProduto as 'Nome', sum(vi.Quantidade) as 'Quantidade'
FROM VendaItem AS vi
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
WHERE v.DataVenda BETWEEN '01/01/2018 00:00:00' AND '12/31/2018 23:59:59'
GROUP BY P.NomeProduto
