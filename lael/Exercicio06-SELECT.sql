--Listar o nome do produto e quantidade vendidas em 2018

SELECT* FROM Produto

SELECT * FROM Venda

SELECT * FROM VendaItem

SELECT p.NomeProduto, SUM(VI.Quantidade) AS 'Quantidades vendidas em 2018' 
FROM VendaItem AS VI
	
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	
	INNER JOIN Venda AS V
	ON VI.IdVenda = V.IdVenda
	
	WHERE YEAR(DataVenda) = 2018
GROUP BY P.NomeProduto

