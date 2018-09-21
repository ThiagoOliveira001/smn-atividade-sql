/*
	listar m�s/ano e m�dia mensal de vendas no m�s/ano de referencia.
	M�dia em valor e quantidade.
*/
SELECT FORMAT(v.DataVenda, 'yyyy/MM') AS 'Data', AVG(vi.Quantidade) AS 'M�dia Quantidade', concat('R$ ', CAST(AVG(p.ValorVenda * vi.Quantidade) AS numeric(15, 2))) AS 'M�dia Valor'
FROM VendaItem AS vi
INNER JOIN Venda AS v
  ON vi.IdVenda = v.IdVenda
INNER JOIN Produto AS p
  ON vi.IdProduto = p.IdProduto
GROUP BY FORMAT(v.DataVenda, 'yyyy/MM')
ORDER BY Data DESC
