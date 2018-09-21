-- 14 listar o nome dos produtos que tenham a palavra "cola" em seu nome

select nomeproduto from Produto
where NomeProduto like '%cola%'