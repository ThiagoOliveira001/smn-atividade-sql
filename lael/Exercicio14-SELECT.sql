--listar o nome dos produtos que tenham a palavra "cola" em seu nome


SELECT P.NomeProduto 
	FROM Produto AS P
WHERE P.NomeProduto LIKE '%Cola%'


