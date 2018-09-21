--listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril


SELECT NomeCliente,Sexo,Ativo
FROM CLIENTE
WHERE MONTH(DataNascimento) = 4



