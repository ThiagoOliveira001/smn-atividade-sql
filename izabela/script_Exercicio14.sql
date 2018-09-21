/*
	Listar Todos os produtos que tenham a palavra "cola" em seu nome
	listar o nome dos produtos que tenham a palavra "cola" em seu nome
*/

SELECT NomeProduto 
FROM Produto
WHERE NomeProduto LIKE '%Cola%'
