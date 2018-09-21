/*
	listar mês/ano e média mensal de vendas no mês/ano de referencia.
	Média em valor e quantidade.
*/
SELECT FORMAT(v.DataVenda, 'yyyy/MM') AS 'Data', AVG(vi.Quantidade) AS 'Média Quantidade', concat('R$ ', CAST(AVG(p.ValorVenda * vi.Quantidade) AS numeric(15, 2))) AS 'Média Valor'
FROM VendaItem AS vi
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
GROUP BY FORMAT(v.DataVenda, 'yyyy/MM')
ORDER BY Data DESC
