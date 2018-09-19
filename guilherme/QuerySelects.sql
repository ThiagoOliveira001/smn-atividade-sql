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

