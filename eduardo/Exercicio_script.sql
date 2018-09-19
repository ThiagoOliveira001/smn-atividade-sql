


				--EXECICIO 1
-- listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate

SELECT p.NomeProduto, m.NomeMarca, p.QuantidadeEstoque FROM Produto As p INNER JOIN Marca AS m 
ON m.IdMarca = p.IdMarca 
INNER JOIN TipoProduto as t on t.IdTipoProduto = t.IdTipoProduto
WHERE NomeTipoProduto LIKE 'Chocolate';

				--EXECICIO 2
-- listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018
SELECT p.NomeProduto, m.NomeMarca, t.NomeTipoProduto, CL.NomeCliente, v.DataPagamento FROM Produto As p
 INNER JOIN  Marca AS m ON m.IdMarca = p.IdMarca 
 INNER JOIN TipoProduto as t on t.IdTipoProduto = t.IdTipoProduto 
 INNER JOIN VendaItem as vi ON vi.IdProduto = p.IdProduto
 INNER JOIN Venda as v ON v.IdVenda = vi.IdVenda
 inner join Cliente as cl ON cl.IdCliente = v.IdCliente 
 WHERE YEAR(v.DataPagamento) = 2018 AND MONTH (V.DataPagamento) = 1 ORDER BY cl.NomeCliente;

				--EXECICIO 3
 -- listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril

 SELECT NomeCliente, Sexo, Ativo FROM Cliente WHERE MONTH(DataNascimento) = 4;

				--EXECICIO 4
-- Listar todos os produtos
-- listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos
SELECT p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda,  p.QuantidadeEstoque FROM Produto AS p 
INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
ORDER BY p.NomeProduto;



				---EXERCICIO 5
--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018

SELECT cl.NomeCliente, COUNT(DISTINCT vi.IdProduto) AS 'Produtos Comprados' FROM Cliente AS cl
LEFT JOIN Venda AS v ON v.IdCliente= cl.idCliente	
LEFT JOIN VendaItem AS vi ON vi.IdVenda = v.idVenda
WHERE YEAR(v.DataVenda) = 2018
GROUP BY cl.NomeCliente
ORDER BY cl.NomeCliente;

			---Exercicio 6

--Listar o nome do produto e quantidade

SELECT p.NomeProduto, p.QuantidadeEstoque FROM Produto p

	--Exercicio 7


-- listar o nome, sexo e status de todos os clientes que não compraram
SELECT cl.NomeCliente, cl.Sexo, cl.Ativo, COUNT(vi.IdVendaItem) AS 'itens', MIN(v.DataVenda) AS 'Venda' FROM Cliente AS cl 
INNER JOIN Venda AS v ON v.IdCliente = cl.IdCliente
INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
WHERE v.DataPagamento  IS NULL    --OU IS NOT NULL PARA lista os quando tiver pago
GROUP BY cl.NomeCliente, cl.Sexo, cl.Ativo
ORDER BY cl.NomeCliente;




			--Exercicio 8
--listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga

SELECT cl.NomeCliente, cl.Sexo, COUNT(vi.IdVendaItem) AS 'Quantidade Itens', MIN(v.DataVenda) AS 'Primeira Venda' FROM Cliente AS cl
INNER JOIN Venda AS v ON v.IdCliente = cl.IdCliente
INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
WHERE v.DataPagamento IS NULL
GROUP BY cl.NomeCliente, cl.Sexo, v.DataPagamento


			-- Exercicio 9
--Lista o total de vendas pagas por marca
--listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.

SELECT m.NomeMarca, (Sum(p.ValorVenda)- sum(p.ValorCompra)) * sum(vi.Quantidade) as 'Lucro', vi.Quantidade FROM Produto AS p 
 INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
 INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
 INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda

 GROUP BY m.NomeMarca, vi.Quantidade
 ORDER BY Lucro;


 -- EXERCICIO 10 
 
 
 
-- Listar todos os produtos e data da ultima compra
--listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra

SELECT DISTINCT p.NomeProduto, m.NomeMarca, p.ValorCompra, p.ValorVenda FROM Produto AS p
INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
GROUP BY p.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra