--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018

--SELECT * FROM Cliente where NomeCliente =  'Allan Silva'

--SELECT* FROM Produto

--SELECT * FROM Venda

--SELECT * FROM VendaItem

SELECT Total.Nome, COUNT(Total.idProduto) AS Total
	FROM 
	(SELECT C.NomeCliente AS Nome, VI.IdProduto AS idProduto
		FROM VendaItem AS VI
		INNER JOIN Venda As V
			ON vi.IdVenda = V.IdVenda
		INNER JOIN Cliente AS C
			ON V.IdCliente = C.IdCliente
		WHERE YEAR(DataVenda) = 2018 
		GROUP BY C.NomeCliente, VI.IdProduto) AS Total
	GROUP BY Total.Nome