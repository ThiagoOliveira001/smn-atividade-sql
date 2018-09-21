USE LojaDoces;
GO
SELECT  FORMAT(v.DataVenda,'MM/yyyy') AS DataAlvo, 
	AVG(vi.Quantidade) AS MediaQtde,
	FORMAT(AVG((p.ValorVenda * vi.Quantidade)), '#0.00') AS MediaValor
FROM VendaItem AS vi
	INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
	INNER JOIN Produto AS p ON p.IdProduto = vi.IdProduto
GROUP BY FORMAT(v.DataVenda,'MM/yyyy')
ORDER BY DataAlvo ASC;
  
