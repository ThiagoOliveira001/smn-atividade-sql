------03 listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril

select NomeCliente,Sexo, Ativo as 'Status'  from Cliente 
 WHERE  MONTH(Cliente.DataNascimento ) = 03