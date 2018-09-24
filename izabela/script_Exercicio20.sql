/*
	Listar todos os clientes e seu produto favorito
	listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco
*/

SELECT c.NomeCliente, c.Sexo, FLOOR(DATEDIFF(DAY, c.DataNascimento, GETDATE()) / 365.25) as 'Idade',
		ISNULL(ca.NomeProduto, ' ') AS 'Produto Favorito'
FROM Cliente AS c
OUTER APPLY (
	SELECT TOP 1 p.NomeProduto, SUM(vi.Quantidade) AS 'Quantidade'
		FROM Produto AS p
		INNER JOIN VendaItem AS vi
		  ON p.IdProduto = vi.IdProduto
		INNER JOIN Venda AS v
		  ON vi.IdVenda = v.IdVenda
		WHERE v.IdCliente = c.IdCliente
		GROUP BY p.NomeProduto
		ORDER BY SUM(vi.Quantidade) DESC) AS ca
	ORDER BY c.NomeCliente