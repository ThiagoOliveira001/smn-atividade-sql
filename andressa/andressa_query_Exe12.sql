/*
QUERY 12 - Listar os produtos mais lucrativos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

/*Listar o nome, marca, quantidade vendida 
e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) 
dos 10 produtos mais lucrativos (Somente produtos pagos)*/

SELECT top 10 P.NomeProduto, M.NomeMarca, SUM(VI.Quantidade) AS Quantidade, P.ValorVenda, P.ValorCompra,
       (P.ValorVenda-P.ValorCompra)*(VI.Quantidade) as Lucro
FROM Produto AS P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
INNER JOIN Venda AS V ON V.IdVenda = VI.IdVenda
WHERE V.DataPagamento is not null and V.DataPagamento < GETDATE()
GROUP BY P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra,VI.Quantidade
ORDER BY Lucro desc
---------------------------------------------------------------------------------------


