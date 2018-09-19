DECLARE @idChocolate SMALLINT

SELECT @idChocolate = IdTipoProduto FROM TipoProduto WHERE NomeTipoProduto = 'Chocolate'

SELECT P.NomeProduto, M.NomeMarca, P.QuantidadeEstoque 
	FROM Produto AS P
	INNER JOIN Marca AS M 
	ON P.IdMarca = M.IdMarca 
	WHERE P.IdTipoProduto = @idChocolate