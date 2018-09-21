-- 13 listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)


select c.nomecliente as Cliente, c.sexo, c.datanascimento as DtNasc, sum(vi.quantidade) as 'Qtd Comprada' from vendaitem vi 

 inner join venda v
  on v.IdVenda = vi.idvenda

 inner join Cliente c
  on c.IdCliente = v.IdCliente 

 where DataPagamento is not null
 group by c.NomeCliente, c.Sexo , c.DataNascimento 

