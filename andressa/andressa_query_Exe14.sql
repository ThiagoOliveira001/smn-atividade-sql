/*
QUERY 14 - Listar Todos os produtos que tenham a palavra "cola" em seu nome
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome dos produtos que tenham a palavra "cola" em seu nome
SELECT NomeProduto
FROM Produto
WHERE NomeProduto like '%cola%'
---------------------------------------------------------------------------------------

