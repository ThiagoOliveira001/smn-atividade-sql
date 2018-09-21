--listar o nome do cliente, sexo, idade e nome do produto favorito 
--(mais comprado pelo cliente), caso não possua deixar em branco

--SELECT 
SELECT C.NomeCliente, C.Sexo, YEAR(GETDATE())-YEAR(C.DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())
								<MONTH(C.DataNascimento)*32+DAY(C.DataNascimento),1,0) AS IDADE, ISNULL(ap.Nomeproduto, '') AS 'Favoritos'
FROM 
	Cliente AS C 
OUTER APPLY (
	SELECT TOP 1 P.NomeProduto, COUNT(VI.IdProduto) AS quantidade
	FROM Produto AS P
	INNER JOIN VendaItem AS VI
	ON vi.IdProduto = p.IdProduto
	INNER JOIN Venda As V
	ON v.IdVenda = vi.IdVenda
	WHERE c.IdCliente = v.IdCliente
	GROUP BY P.NomeProduto
	ORDER BY COUNT(VI.IdProduto) DESC
		) AS ap 
	ORDER BY C.NomeCliente
