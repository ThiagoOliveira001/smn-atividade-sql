select c.nomecliente,
count(Distinct z.idproduto) as 'Produtos comprados'
from cliente as c
	left join venda as v on v.idcliente= c.idcliente
	left join vendaitem as z on z.idvenda= v.idvenda
	
	where year(v.datavenda) = 2018
	group by c.nomecliente
	order by c.nomecliente 