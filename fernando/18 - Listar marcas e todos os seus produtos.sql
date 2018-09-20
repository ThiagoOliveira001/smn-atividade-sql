Listar o nome da marca e o nome de todos os seus produtos separados por ","


SELECT 
	NomeMarca, SUBSTRING(Produtos, 1, LEN(Produtos) - 1) as NomesProdutos	
FROM MARCA
	CROSS APPLY (SELECT (Produto.NomeProduto + ' , ')
FROM Produto
WHERE Produto.IdMarca = Marca.IdMarca FOR XML PATH ('')) ap ( Produtos )
ORDER BY NomeMarca DESC
