use LojaDoces
Select * from Produto

--01 - Listar todos os produtos do tipo "Chocolate"
--listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate 
SELECT NomeProduto, QuantidadeEstoque, Marca.IdMarca, Marca.NomeMarca FROM Produto
	inner join 
		Marca ON Produto.IdMarca = Marca.IdMarca
WHERE IdTipoProduto = 5;

SELECT * FROM Produto
	INNER JOIN 
		Marca ON Produto.IdMarca = Marca.IdMarca
WHERE IdTipoProduto = 5;

--02 - Listar todas as compras pagas em Janeiro de 2018
--listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018
SELECT Produto.NomeProduto, TipoProduto.NomeTipoProduto, Marca.NomeMarca, Cliente.NomeCliente, Venda.DataVenda, Venda.DataPagamento FROM Produto
	INNER JOIN 
		VendaItem on VendaItem.IdProduto = Produto.IdProduto
	INNER JOIN 
		TipoProduto on TipoProduto.IdTipoProduto = Produto.IdTipoProduto
	INNER JOIN 
		Marca on Marca.IdMarca = Produto.IdMarca
	INNER JOIN 
		Venda on Venda.IdVenda = VendaItem.IdVenda
	INNER JOIN 
		Cliente on Cliente.IdCliente = Venda.IdCliente
WHERE YEAR(Venda.DataPagamento) = 2018 and
		  MONTH(Venda.DataPagamento) = 1;


--03 - Listar todos os clientes que fazem aniversario em Abril
--listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril
SELECT Cliente.NomeCliente, Cliente.Sexo, Cliente.DataNascimento, Cliente.Ativo
FROM Cliente
WHERE Cliente.Ativo = 1 and MONTH(Cliente.DataNascimento) = 4;

--04 - Listar todos os produtos
--listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos
SELECT Produto.NomeProduto, Marca.NomeMarca, Produto.ValorVenda, Produto.ValorCompra, Produto.QuantidadeEstoque
FROM Produto
	INNER JOIN 
		Marca ON Marca.idMarca = Produto.IdMarca ;

--05 - Listar clientes e quantidade comprado em 2018
--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018
SELECT DISTINCT Cliente.NomeCliente, VendaItem.Quantidade 
FROM Cliente
	INNER JOIN 
		Venda ON Venda.IdCliente = Cliente.IdCliente
	INNER JOIN 
		VendaItem ON VendaItem.IdVenda = Venda.IdVenda
WHERE YEAR(Venda.DataVenda) = 2018;

--06 - Listar produtos e quantidade vendidos em 2018
--Listar o nome do produto e quantidade
SELECT Produto.NomeProduto, SUM(VendaItem.Quantidade)
FROM Produto
	INNER JOIN 
		VendaItem ON VendaItem.IdProduto = Produto.IdProduto
	INNER JOIN 
		Venda ON Venda.IdVenda = VendaItem.IdVenda
WHERE YEAR(Venda.DataVenda) = 2018
GROUP BY(Produto.NomeProduto);

--07 - Listar Todos os clientes que não compraram
--listar o nome, sexo e status de todos os clientes que não compraram
SELECT Cliente.NomeCliente, Cliente.Sexo, Cliente.Ativo, Venda.DataVenda
	FROM Cliente
	LEFT JOIN 
		Venda ON Venda.idCliente = Cliente.IdCliente
WHERE Venda.IdCliente IS NULL;

--08 - Listar os top 10 inadimplentes
--listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga
SELECT TOP 10 Cliente.NomeCliente, Cliente.Sexo, SUM(VendaItem.Quantidade), Venda.DataVenda, Venda.DataPagamento
	FROM Cliente
	INNER JOIN 
		Venda ON Venda.IdCliente = Cliente.IdCliente
	INNER JOIN 
		VendaItem ON VendaItem.IdVenda = Venda.IdVenda
WHERE Venda.DataPagamento IS NULL
GROUP BY Cliente.NomeCliente, Cliente.Sexo, Venda.DataVenda, Venda.DataPagamento;

USE LojaDoces
--09 - Listar o total de vendas pagas por marca
--listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.
Select Marca.NomeMarca, (SUM(Produto.ValorVenda) - SUM(Produto.ValorCompra)) * SUM(VendaItem.Quantidade) AS Lucro, SUM(VendaItem.Quantidade) AS Quantidade
FROM Produto
	INNER JOIN 
		Marca ON Marca.IdMarca = Produto.IdMarca
	INNER JOIN 
		VendaItem ON VendaItem.IdProduto = Produto.IdProduto
GROUP BY Marca.NomeMarca
ORDER BY Lucro;

--10 - Listar todos os produtos e data da ultima compra
--listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra

SELECT (NomeProduto), (NomeCliente), (NomeMarca), (Produto.ValorVenda), (Produto.ValorCompra), (DataVenda)
FROM Produto
	Cross Apply(
	Select Top (1) NomeCliente, NomeMarca, ValorVenda, ValorCompra, DataVenda FROM VendaItem
	INNER JOIN 
		Marca ON Marca.IdMarca = Produto.IdMarca
	INNER JOIN 
		Venda ON Venda.IdVenda = VendaItem.IdVenda
	INNER JOIN 
		Cliente ON CLiente.IdCliente = Venda.IdCliente
WHERE VendaItem.IdProduto = Produto.IdProduto
Order by DataVenda DESC) as tabela

--11 -Listar a quantidade de produtos por marca
--Listar o nome da marca, e quantidade de produtos em estoque
SELECT Marca.NomeMarca, Produto.QuantidadeEstoque
FROM Marca
	INNER JOIN 
		Produto on Produto.IdMarca = Marca.IdMarca

--12 - Listar os produtos mais lucrativos
--listar o nome, marca, quantidade vendida e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) dos 10 
--produtos mais lucrativos (Somente produtos pagos)
Select TOP 10 Marca.NomeMarca, (Produto.ValorVenda - Produto.ValorCompra) * VendaItem.Quantidade AS Lucro, SUM(VendaItem.Quantidade) AS Quantidade
FROM Produto
	INNER JOIN 
		Marca ON Marca.IdMarca = Produto.IdMarca
	INNER JOIN 
		VendaItem ON VendaItem.IdProduto = Produto.IdProduto
GROUP BY Marca.NomeMarca, Produto.ValorVenda, Produto.ValorCompra, VendaItem.Quantidade
ORDER BY Lucro DESC;

--13 - Listar os 15 maiores compradores
--listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)
SELECT TOP 15 
		C.NomeCliente, 
		C.Sexo, 
		C.DataNascimento, 
		SUM(VI.Quantidade) AS QuantidadeTotal 
FROM Cliente AS C
	INNER JOIN 
		Venda AS V ON V.IdCliente = C.IdCliente
	INNER JOIN
		VendaItem AS VI ON VI.IdVenda = V.IdVenda
WHERE V.DataPagamento IS NOT NULL
GROUP BY C.NomeCliente, C.Sexo, C.DataNascimento
ORDER BY QuantidadeTotal DESC

--14 - Listar Todos os produtos que tenham a palavra "cola" em seu nome
--listar o nome dos produtos que tenham a palavra "cola" em seu nome
SELECT P.NomeProduto 
FROM Produto AS P
WHERE P.NomeProduto LIKE '%cola%'

--15 - Listar Todos os clientes ativos
--listar o nome, sexo e data de nascimento de todos os clientes
SELECT C.NomeCliente, C.Sexo, C.DataNascimento, C.Ativo
	FROM Cliente AS C
	WHERE C.Ativo = '1';

--16 - Listar todos os produtos que não foram vendidos
--listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos
SELECT P.NomeProduto, P.ValorVenda, TP.NomeTipoProduto, M.NomeMarca 
FROM Produto AS P
	INNER JOIN
		TipoProduto AS TP ON TP.IdTipoProduto = P.IdTipoProduto
	INNER JOIN
		Marca AS M ON M.IdMarca = P.IdMarca
	LEFT JOIN 
	VendaItem As VI ON VI.IdProduto = P.IdProduto	
WHERE VI.IdVenda IS NULL

--17 - Listar os produtos mais vendidos
--listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos
SELECT TOP 10 P.NomeProduto, P.ValorVenda, P.QuantidadeEstoque, M.NomeMarca
FROM Produto AS P
	INNER JOIN
		Marca AS M ON M.IdMarca = P.IdMarca
	INNER JOIN 
		VendaItem As VI ON VI.IdProduto = P.IdProduto
GROUP BY P.NomeProduto, P.ValorVenda, P.QuantidadeEstoque, M.NomeMarca
ORDER BY SUM(VI.Quantidade) DESC

--18 - Listar marcas e todos os seus produtos
--Listar o nome da marca e o nome de todos os seus produtos separados por ","
Use LojaDoces
SELECT NomeMarca, SUBSTRING(Produto, 1, LEN (Produto) -1) AS Produtos FROM Marca
	CROSS APPLY (SELECT (Produto.NomeProduto + ', ')
FROM Produto
WHERE Produto.IdMarca = Marca.IdMarca FOR XML PATH('')) ap (Produto)
ORDER BY NomeMarca DESC


--19 - Listar o total de vendas por mes
--listar o mes/ano,  a quantidade total de vendas (pagas) e a quantidade total de vendas (não pagas) no mes/ano de referencia
select FORMAT ( DATAVENDA, 'MM/yyyy') AS DATAS  ,
		SUM(CASE WHEN DataPagamento IS null THEN 1 ELSE  0 END) as ProdutosNãoPagos,
		SUM(CASE WHEN DataPagamento IS not null THEN 1 ELSE 0 END) as ProdutosPagos
	FROM Venda
	GROUP BY FORMAT ( DataVenda, 'MM/yyyy'),FORMAT ( DATAVENDA, 'yyyy')
	ORDER BY FORMAT ( DATAVENDA, 'yyyy')



--20 - Listar todos os clientes e seu produto favorito
--listar o nome do cliente, sexo, idade e nome do produto favorito (mais comprado pelo cliente), caso não possua deixar em branco
SELECT C.NomeCliente, C.Sexo, FLOOR(DATEDIFF(DAY, C.DataNascimento, GETDATE()) / 365.25) AS Idade , P.NomeProduto, SUM(VI.Quantidade)
	FROM Cliente C
	INNER JOIN 
		Venda V ON V.IdCliente = C.IdCliente
	INNER JOIN
		VendaItem VI ON VI.IdVenda = V.IdVenda
	INNER JOIN
		Produto P ON P.IdProduto = VI.IdProduto
GROUP BY C.NomeCliente, C.Sexo,C.DataNascimento, P.NomeProduto
