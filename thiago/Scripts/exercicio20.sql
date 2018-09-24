USE LojaDoces;
GO
SELECT c.NomeCliente,
	   c.Sexo,
	   ISNULL(ap.NomeProduto,'') AS NomeProduto,
	   ISNULL(ap.Compra,'') AS Favorito,
	   FLOOR(DATEDIFF(day, c.DataNascimento, GETDATE()) / 365.25) AS Idade
FROM Cliente AS c
	OUTER APPLY(
		SELECT TOP(1) 
			p.NomeProduto,
			COUNT(vi.IdProduto) AS Compra
		FROM Produto AS p
			INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
			INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
		WHERE v.IdCliente = c.IdCliente
		GROUP BY p.NomeProduto
		ORDER BY Compra DESC
	) ap
ORDER BY c.NomeCliente ASC


