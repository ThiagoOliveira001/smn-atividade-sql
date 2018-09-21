/*
	Listar clientes e quantidade comprado em 2018
	Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018
*/
SELECT Resultado.nc AS 'Nome Cliente',
  COUNT(Resultado.idp) AS 'Quantidade produtos diferentes'
FROM (SELECT
		  c.NomeCliente AS nc,
		  p.IdProduto AS idp
		FROM VendaItem AS vi
		INNER JOIN Venda AS v
		  ON vi.IdVenda = v.IdVenda
		INNER JOIN Produto AS p
		  ON vi.IdProduto = p.IdProduto
		INNER JOIN Cliente AS c
		  ON v.IdCliente = c.IdCliente
		WHERE v.DataVenda BETWEEN '01/01/2018 00:00:00' AND '12/31/2018 23:59:59'
GROUP BY c.NomeCliente,
         p.IdProduto) AS Resultado
GROUP BY Resultado.nc
