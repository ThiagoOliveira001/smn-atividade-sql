--20 - Listar todos os clientes e seu produto favorito
--listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco

USE LojaDoces
SELECT	c.NomeCliente,
		c.Sexo,
		FLOOR(DATEDIFF(YEAR, c.DataNascimento, GETDATE())) AS Idade,
		x.NomeProduto,
		x.Quantidade
		FROM Cliente c
		OUTER APPLY (SELECT TOP 1	vi.Quantidade as Quantidade,
									p.NomeProduto
									FROM VendaItem vi
									INNER JOIN Venda v
										ON c.IdCliente = v.IdCliente
									INNER JOIN Produto p
										ON vi.IdProduto = p.IdProduto
									WHERE vi.IdVenda = v.IdVenda
									ORDER BY vi.Quantidade DESC
					) AS x