/*
QUERY 05 - Listar clientes e quantidade comprado em 2018
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018
SELECT C.NomeCliente, count(ca.IdProduto)  as 'Quantidade de Produtos'
from Cliente as c
cross apply(
	select p1.IdProduto	
	from VendaItem as vi1
	inner join Venda as v1 on v1.IdVenda = vi1.IdVenda
	inner join Cliente as c1 on c1.IdCliente = v1.IdCliente
	inner join Produto as p1 on p1.IdProduto = vi1.IdProduto
	where year(v1.DataVenda)=2018 and c1.IdCliente=c.IdCliente
	group by p1.IdProduto, c1.NomeCliente
	
)as CA
group by C.NomeCliente
order by c.NomeCliente
---------------------------------------------------------------------------------------

--COM SUBCONSULTA
--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018

--SELECT CA.NomeCliente, count(CA.IdProduto) as 'Quantidade de Produtos'
--from
--(	select p1.IdProduto, c1.NomeCliente
--	from VendaItem as vi1
--	inner join Venda as v1 on v1.IdVenda = vi1.IdVenda
--	inner join Cliente as c1 on c1.IdCliente = v1.IdCliente
--	inner join Produto as p1 on p1.IdProduto = vi1.IdProduto
--	where year(v1.DataVenda)=2018
--	group by p1.IdProduto, c1.NomeCliente
	
--)as CA
--group by CA.NomeCliente
--order by cA.NomeCliente
---------------------------------------------------------------------------------------

