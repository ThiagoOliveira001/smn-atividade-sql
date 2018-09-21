select top 10 c.NomeCliente, c.Sexo, AVG(DATEDIFF(DAY, v.DataVenda, v.DataPagamento)) as 'Média dia'
from Venda as v
inner join Cliente as c
on v.IdCliente = c.IdCliente
where v.DataPagamento is not null and v.DataPagamento <= getdate()
group by c.NomeCliente, c.Sexo
order by [Média dia] 
