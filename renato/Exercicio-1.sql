-- 01 - Listar todos os produtos do tipo "Chocolate"
-- listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate

-- Chocolate -> IdTipoProduto = 5
-- Produto.NomeProduto
-- Marca.NomeMarca
-- Produto.QuantidadeEstoque
USE LojaDoces

SELECT Produto.NomeProduto, Marca.NomeMarca, Produto.QuantidadeEstoque 
FROM Produto 
INNER JOIN Marca 
ON Produto.IdMarca = Marca.IdMarca 
INNER JOIN TipoProduto
ON Produto.IdTipoProduto = TipoProduto.IdTipoProduto
WHERE TipoProduto.IdTipoProduto = 5