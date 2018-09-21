--listar m�s/ano e m�dia mensal de vendas no m�s/ano de referencia.
--M�dia em valor e quantidade

SELECT MONTH(v.DataVenda) AS Mes, YEAR(v.DataVenda) AS Ano, AVG(VI.Quantidade) AS Quantidade, AVG((P.ValorVenda * VI.Quantidade)) AS Valor
		FROM Venda AS V
		INNER JOIN VendaItem AS VI
		ON V.IdVenda = VI.IdVenda
		INNER JOIN Produto AS P
		ON VI.IdProduto = p.IdProduto
		WHERE V.DataVenda IS NOT NULL
		GROUP BY MONTH(V.DataVenda), YEAR(V.DataVenda)
		ORDER BY Ano ASC