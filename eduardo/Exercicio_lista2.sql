use LojaDoces;



	--Exercicios 11
--Listar a quantidade de produtos por marca

SELECT m.NomeMarca, p.QuantidadeEstoque FROM Marca As m
INNER JOIN Produto AS p ON p.IdProduto = m.IdMarca




  --Exercico 12
/* listar o nome, marca, quantidade vendida e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) 
dos 10 produtos mais lucrativos (Somente produtos pagos)*/

SELECT TOP(10) p.NomeProduto, m.NomeMarca, SUM((p.ValorVenda - p.ValorCompra) * vi.Quantidade) as 'Lucro' FROM Produto AS p
INNER JOIN Marca AS m ON m.IdMarca = p.IdProduto
INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda

WHERE v.DataPagamento IS NOT NULL
GROUP BY p.NomeProduto, m.NomeMarca



-- Exercico 13
--listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)

SELECT TOP(15) cl.NomeCliente, cl.Sexo, cl.DataNascimento, vi.Quantidade FROM Cliente AS cl
INNER JOIN Produto AS p ON p.IdProduto = cl.IdCliente
INNER JOIN VendaItem AS vi ON vi.IdVenda = p.IdProduto 
INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
WHERE v.DataPagamento IS NOT NUll



--EXERCICIO 14
-- Listar Todos os produtos que tenham a palavra "cola" em seu nome

SELECT NomeProduto FROM Produto 
WHERE NomeProduto LIKE '%cola%' 



-- EXERICIO 15
-- Listar Todos os clientes ativos
--listar o nome, sexo e data de nascimento de todos os clientes

SELECT cl.NomeCliente, cl.sexo, cl.DataNascimento  FROM Cliente AS cl
WHERE cl.Ativo = 1
ORDER BY cl.NomeCliente;



-- EXERCICIO 16
-- Listar todos os produtos que não foram vendidos
--listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos

SELECT p.NomeProduto, tp.NomeTipoProduto, m.NomeMarca, p.ValorVenda  FROM Produto AS p 
INNER JOIN TipoProduto AS tp ON tp.IdTipoProduto = p.IdTipoProduto
INNER JOIN Marca AS m ON m.IdMarca =  p.IdMarca
LEFT JOIN VendaItem vi ON vi.IdProduto = p.IdProduto
WHERE vi.IdProduto IS NULL
ORDER BY NomeProduto



-- EXERCICIO 17

-- Listar os produtos mais vendidos
-- listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos

SELECT TOP(10) p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda, p.QuantidadeEstoque FROM Produto AS p
INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
ORDER BY p.NomeProduto


--EXERCICIO 18
--Listar marcas e todos os seus produtos
--Listar o nome da marca e o nome de todos os seus produtos separados por ","

SELECT  m.NomeMarca, SUBSTRING(Produtos ,1, LEN(Produtos)-1) FROM Marca AS m
CROSS APPLY (
	SELECT (p.NomeProduto + ',')
	FROM Produto AS p
	WHERE p.IdMarca = m.IdMarca
	FOR XML PATH('')
) ap ( Produtos )

PRINT SUBSTRING ('BATATA', 1, 3)

--EXERCICIO 19
-- Listar o total de vendas por mes
--listar o mes/ano, a quantidade total de produtos vendidos (pagos)
-- e a quantidade total de produtos vendidos (não pagos) no mes/ano de referencia


SELECT FORMAT(v.DataVenda,'MM/yyyy') AS DataAlvo,
	COUNT(CASE WHEN v.DataPagamento IS NOT NULL THEN 1 ELSE NULL END) AS VendasPagas,
	COUNT(CASE WHEN v.DataPagamento IS NULL THEN 1 ELSE NULL END) AS VendasNaoPagas
FROM Venda AS v
GROUP BY FORMAT(v.DataVenda,'MM/yyyy'), FORMAT(v.DataVenda, 'yyyy')
ORDER BY FORMAT(v.DataVenda, 'yyyy') ASC


--EXERCICIO 20
--Listar todos os clientes e seu produto favorito
--listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco

SELECT cl.NomeCliente, cl.Sexo, ISNULL(ap.NomeProduto,' ') AS NomeProduto,  ISNULL(ap.Compra,'') AS Favorito, FLOOR(DATEDIFF(DAY, cl.DataNascimento, GETDATE()) / 365.25) AS idade FROM Cliente AS cl
	OUTER APPLY(
		SELECT TOP(1) 
			p.NomeProduto,
			COUNT(vi.IdProduto) AS Compra
		FROM Produto AS p
			INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
			INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
		WHERE v.IdCliente = cl.IdCliente
		GROUP BY p.NomeProduto
		ORDER BY Compra DESC
	) ap
ORDER BY cl.NomeCliente ASC