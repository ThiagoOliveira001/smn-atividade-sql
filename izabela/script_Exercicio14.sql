/*
	Listar Todos os produtos que tenham a palavra "cola" em seu nome
	listar o nome dos produtos que tenham a palavra "cola" em seu nome
*/

SELECT pr.NomeProduto 
	FROM Produto pr
	WHERE NomeProduto LIKE '%Cola%'
