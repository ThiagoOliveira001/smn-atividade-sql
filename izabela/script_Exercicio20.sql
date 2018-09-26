/*
	Listar todos os clientes e seu produto favorito
	listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco
*/

SELECT cl.NomeCliente, cl.Sexo, FLOOR(DATEDIFF(DAY, cl.DataNascimento, GETDATE()) / 365.25) as 'Idade',
		ISNULL(ca.NomeProduto, ' ') AS 'Produto Favorito'
FROM Cliente cl WITH(NOLOCK)
OUTER APPLY (
	SELECT TOP(1) pr.NomeProduto, SUM(vi.Quantidade) AS 'Quantidade'
		FROM Produto pr WITH(NOLOCK)
		INNER JOIN VendaItem vi WITH(NOLOCK)
		  ON pr.IdProduto = vi.IdProduto
		INNER JOIN Venda ve WITH(NOLOCK)
		  ON vi.IdVenda = ve.IdVenda
		WHERE ve.IdCliente = cl.IdCliente
		GROUP BY pr.NomeProduto
		ORDER BY SUM(vi.Quantidade) DESC) AS ca
	ORDER BY cl.NomeCliente