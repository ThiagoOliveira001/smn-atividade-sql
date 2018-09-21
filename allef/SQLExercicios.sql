use LojaDoces


-- Popular

insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values
('João Lopes','M','10-05-2000',0),
('Willian Mulia','M','05-20-1990',1),
('Otavio Fricatti','M', '11-25-1995',0),
('Jaime José','M', '03-20-1980',1),
('Paulo Capel','M', '10-05-1993',0),
('Caroline Moura','F', '04-20-1994',1),
('Thiago Lima','M', '09-07-1970', 0),
('Eliza Santos','F', '04-20-1991', 1),
('Lucas Elias','M', '08-08-1968', 0),
('Carlos Roland','M', '10-05-1965', 1),
('Guilherme Mendes','M', '11-13-1983', 0),
('Tiago Marangoni','M', '10-01-1990', 1),
('Dene Danilo','M', '11-13-2001', 0),
('Claudio Aggio','M', '05-05-1975', 1),
('Douglas Karpinski','M', '09-09-1990', 0),
('Murilo Rodrigues','M', '10-01-1996', 1),
('Pablo Vittar','M', '01-03-1991', 1),
('Mateus Oliveira','M', '09-09-1988', 0),
('Fabio Garcia','M', '03-03-1955', 1),
('Fernando Martins','M', '07-03-1999', 0)

insert into Marca (NomeMarca) Values ('Red Bull')

insert into Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque)
Values
(3, 39, 'Red Bull Energy Drink 250ml', 3.50, 5.99, 7),
(3, 39, 'Red Bull Energy Drink 500ml', 6.00, 11.00, 7),
(3, 39, 'Red Bull Energy Drink 1l', 11.00, 20.00, 4),
(3, 39, 'Red Bull Energy Drink 250ml - Pack 4 Latas', 11.90, 22.00, 3),
(3, 39, 'Red Bull Sugarfree 250ml', 3.50, 5.99, 7),
(3, 39, 'Red Bull Sugarfree 250ml - Pack 4 latas', 11.90, 22.00, 3),
(3, 39, 'Red Bull Sugarfree 500ml', 6.00, 11.00, 7),
(3, 39, 'Red Bull Sugarfree 1l', 11.00, 20.00, 3),
(3, 39, 'Red Bull Blue Edition 250ml', 4.30, 6.99, 6),
(3, 39, 'Red Bull Blue Edition 500ml', 8.00, 13.00, 6),
(3, 39, 'Red Bull Blue Edition 1l', 15.00, 25.00, 3),
(3, 39, 'Red Bull Red Edition 250ml', 4.30, 6.99, 6),
(3, 39, 'Red Bull Red Edition 500ml', 8.00, 13.00, 6),
(3, 39, 'Red Bull Red Edition 1l', 15.00, 25.00, 3),
(3, 39, 'Red Bull Tropical Edition 250ml', 5.30, 7.99, 6),
(3, 39, 'Red Bull Tropical Edition 500ml', 9.00, 14.00, 6),
(3, 39, 'Red Bull Tropical Edition 1l', 16.00, 26.00, 3),
(3, 39, 'Red Bull Golden Edition 250ml', 15.00, 23.00, 3),
(3, 39, 'Red Bull Golden Edition 600ml', 22.00, 35.00, 3),
(3, 39, 'Red Bull Golden Edition 1l', 30.00, 50.00, 3)


select * from Cliente order by IdCliente

insert into Venda (IdCliente, DataVenda, DataPagamento)
Values
(2,'08-06-2018', '08-20-2018'),
(4,'08-06-2018', '08-20-2018'),
(6,'08-06-2018', '08-20-2018'),
(8,'08-06-2018', '08-21-2018'),
(9,'08-06-2018', '08-21-2018'),
(12,'08-06-2018', '08-21-2018'),
(16,'08-06-2018', '08-22-2018'),
(18,'08-06-2018', '08-22-2018'),
(19,'08-06-2018', '08-23-2018'),
(22,'08-06-2018', NULL),
(23,'08-13-2018', '09-03-2018'),
(24,'08-13-2018', '09-03-2018'),
(30,'08-13-2018', '09-04-2018'),
(39,'08-13-2018', '09-04-2018'),
(45,'08-13-2018', '09-05-2018'),
(46,'08-13-2018', '09-05-2018'),
(47,'08-13-2018', '09-05-2018'),
(48,'08-13-2018', '09-05-2018'),
(49,'08-13-2018', '09-06-2018'),
(50,'08-13-2018', NULL),
(51,'08-20-2018', '09-10-2018'),
(52,'08-20-2018', '09-10-2018'),
(53,'08-20-2018', '09-10-2018'),
(54,'08-20-2018', '09-10-2018'),
(55,'08-20-2018', '09-11-2018'),
(56,'08-20-2018', '09-11-2018'),
(57,'08-20-2018', '09-11-2018'),
(58,'08-20-2018', '09-12-2018'),
(59,'08-20-2018', '09-12-2018'),
(60,'08-20-2018', NULL),
(61, '08-27-2018','09-13-2018'),
(62, '08-27-2018','09-13-2018'),
(128, '08-27-2018','09-13-2018'),
(129, '08-27-2018','09-14-2018'),
(130, '08-27-2018','09-14-2018'),
(131, '08-27-2018','09-14-2018'),
(132, '08-27-2018','09-17-2018'),
(133, '08-27-2018','09-17-2018'),
(134, '08-27-2018','09-17-2018'),
(135, '08-27-2018', NULL),
(136, '09-03-2018', '09-18-2018'),
(136, '09-03-2018', '09-18-2018'),
(136, '09-03-2018', '09-18-2018'),
(136, '09-03-2018', '09-18-2018'),
(136, '09-03-2018', '09-19-2018'),
(136, '09-03-2018', '09-19-2018'),
(136, '09-03-2018', NULL),
(136, '09-03-2018', NULL),
(136, '09-03-2018', NULL),
(136, '09-03-2018', NULL)

select*from Venda

insert into VendaItem (IdVenda, IdProduto, Quantidade)
Values
(1030, 357, 2),
(1031, 358, 1),
(1032, 359, 3),
(1033, 360, 2),
(1034, 361, 1),
(1035, 362, 2),
(1036, 363, 1),
(1037, 364, 1),
(1038, 365, 1),
(1039, 366, 2),

(1040, 365, 2),
(1041, 366, 1),
(1042, 367, 3),
(1043, 368, 2),
(1044, 369, 1),
(1045, 370, 2),
(1046, 371, 1),
(1047, 372, 1),
(1048, 373, 1),
(1049, 374, 2),

(1050, 375, 2),
(1051, 376, 1),
(1052, 377, 1),
(1053, 378, 2),
(1054, 379, 1),
(1055, 380, 2),
(1056, 381, 1),
(1057, 382, 1),
(1058, 383, 1),
(1059, 384, 2),

(1060, 385, 2),
(1061, 386, 1),
(1062, 387, 3),
(1063, 388, 2),
(1064, 389, 1),
(1065, 390, 2),
(1066, 390, 1),
(1067, 389, 1),
(1068, 388, 1),
(1069, 387, 2),

(1070, 297, 2),
(1071, 298, 1),
(1072, 299, 3),
(1073, 301, 2),
(1074, 302, 1),
(1075, 303, 2),
(1076, 304, 1),
(1077, 305, 1),
(1078, 306, 1),
(1079, 307, 2)

-- Exercicio 01

select NomeProduto, NomeMarca, QuantidadeEstoque  from TipoProduto
inner join Produto
on TipoProduto.IdTipoProduto = Produto.IdTipoProduto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
Where NomeTipoProduto = 'Chocolate'

-- Exercicio 02

select NomeProduto, NomeMarca, NomeTipoProduto, NomeCliente, DataVenda, DataPagamento from TipoProduto
inner join Produto
on TipoProduto.IdTipoProduto = Produto.IdTipoProduto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
inner join Cliente
on  Venda.IdCliente = Cliente.IdCliente
Where DataPagamento > '12-31-2017' and DataPagamento < '01-31-2018' 

-- exercicio 03

Select NomeCliente, Sexo, Ativo from Cliente
where MONTH(DataNascimento) = 4

-- exercicio 04

select NomeProduto, NomeMarca, ValorVenda, ValorCompra, QuantidadeEstoque from Produto
inner join Marca
on Produto.IdMarca = Marca.IdMarca

-- exercicio 05

select DISTINCT NomeCliente, NomeProduto, Quantidade, DataPagamento from TipoProduto
inner join Produto
on TipoProduto.IdTipoProduto = Produto.IdTipoProduto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
inner join Cliente
on  Venda.IdCliente = Cliente.IdCliente
where YEAR(DataPagamento) = 2018
order by NomeCliente

-- exercicio 06

select NomeProduto, QuantidadeEstoque from Produto

-- exercicio 07

select NomeCliente, Sexo, Ativo from Cliente
left join Venda
on CLiente.IdCliente = Venda.IdCliente
where venda.DataVenda is null

-- exercicio 08

select TOP 10 NomeCliente, Sexo, DataVenda, DataPagamento, SUM (Quantidade)  from Cliente
inner join Venda
on CLiente.IdCliente = Venda.IdCliente
inner join VendaItem
on Venda.IdVenda = VendaItem.IdVenda
where DataPagamento is null
Group by NomeCliente, Sexo, DataVenda, DataPagamento
order by NomeCliente

-- exercicio 09 -- lucro dos cliente que ja pagou

select nomeMarca, SUM((Produto.ValorVenda - Produto.ValorCompra) * Quantidade) as Lucro, 
sum(VendaItem.Quantidade) as quantidaTotal from Venda
inner join VendaItem
on Venda.IdVenda = VendaItem.IdVenda
inner join Produto
on VendaItem.IdProduto = Produto.IdProduto
inner join Marca
on Produto.IdMarca = Marca. IdMarca
where DataPagamento is not null
group by nomeMarca
order by lucro

-- exercicio 10

select Cliente.NomeCliente, Produto.NomeProduto, Marca.NomeMarca, Produto.ValorVenda, 
Produto.ValorCompra, Venda.DataVenda, Cliente.IdCliente from TipoProduto
inner join Produto
on TipoProduto.IdTipoProduto = Produto.IdTipoProduto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
inner join Cliente
on  Venda.IdCliente = Cliente.IdCliente
where NomeMarca like 'Pastel%'

select NomeProduto ,MAX(ValorVenda) from produto
Group by NomeProduto

-- EXERCICIO 10


select p.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra, ap.DataVenda, ap.NomeCliente
from Produto as p
INNER JOIN Marca as m 
on m.IdMarca = p.IdMarca
CROSS APPLY
( select top(1) v.DataVenda, c.NomeCliente from Venda as v
INNER JOIN Cliente as c on c.IdCliente = v.IdCliente
INNER JOIN VendaItem as vi on vi.IdVenda = v.IdVenda
where vi.IdProduto = p.IdProduto
order by v.DataVenda desc ) ap
order by p.NomeProduto

-- Exercicio 11

select Marca.NomeMarca, SUM(Produto.QuantidadeEstoque) as QuantidadeTotal from Marca
inner join Produto
on Marca.IdMarca = Produto.IdMarca
group by Marca.NomeMarca
order by QuantidadeTotal DESC

-- Exercicio 12

select TOP 10 NomeProduto,nomeMarca, SUM((Produto.ValorVenda - Produto.ValorCompra) * Quantidade) as Lucro,
sum(VendaItem.Quantidade) as quantidaTotal from Venda
inner join VendaItem
on Venda.IdVenda = VendaItem.IdVenda
inner join Produto
on VendaItem.IdProduto = Produto.IdProduto
inner join Marca
on Produto.IdMarca = Marca. IdMarca
where DataPagamento is not null
group by NomeProduto, nomeMarca
order by lucro DESC

-- Exercicio 13

select TOP 15 Cliente.NomeCliente, Cliente.Sexo, Cliente.DataNascimento, SUM(VendaItem.Quantidade)
as QuantidadeTotalComprada from Cliente
inner join Venda
on Cliente.IdCliente = Venda.IdCliente
inner join VendaItem
on Venda.IdVenda = VendaItem.IdVenda
where DataPagamento is not null
group by Cliente.NomeCliente, Cliente.Sexo, Cliente.DataNascimento
order by QuantidadeTotalComprada DESC

-- Exercicio 14

select NomeProduto from Produto
where NomeProduto like '%cola%'

-- Exercicio 15

select NomeCliente, Sexo, DataNascimento from Cliente
where Ativo = 1

-- Exercicio 16

select Produto.NomeProduto, TipoProduto.NomeTipoProduto, Marca.NomeMarca, Produto.ValorVenda, IdVenda
from Produto
inner join TipoProduto
on Produto.IdTipoProduto = TipoProduto.IdTipoProduto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
left join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
where IdVenda is null

-- exercicio 17

select TOP 10 Produto.NomeProduto, Marca.NomeMarca, Produto.ValorCompra, Produto.ValorVenda, 
Produto.QuantidadeEstoque from Produto
inner join Marca
on Produto.IdMarca = Marca.IdMarca
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
where DataPagamento is not null
Group by Produto.NomeProduto, Marca.NomeMarca, Produto.ValorCompra, Produto.ValorVenda, 
Produto.QuantidadeEstoque
order by SUM(Quantidade) DESC


-- Exercicio 18

SELECT NomeMarca, SUBSTRING(Produtos,1,LEN(Produtos) - 1) as NomesProdutos FROM Marca
CROSS APPLY (SELECT (Produto.NomeProduto + ', ')
FROM Produto
WHERE Produto.IdMarca = Marca.IdMarca FOR XML PATH('')) ap ( Produtos )
order by NomeMarca DESC

-- Exercicio 19

select format(DataVenda,'MM/yyyy') as Alvo,
	count(case when DataPagamento is not null then 1 else null end) as VendasPagas,
	count(case when DataPagamento	is null then 1 else null end) as VendasNaoPagas
from Venda
group by format(DataVenda,'MM/yyyy'), format(DataVenda, 'yyyy')
order by format(DataVenda, 'yyyy') asc

-- Exercicio 20

SELECT NomeCliente, Sexo, FLOOR(DATEDIFF(DAY, DataNascimento, GETDATE()) / 365.25) as Idade,
SUM(VendaItem.Quantidade) as Quantidade FROM Cliente 
INNER JOIN Venda 
ON Cliente.IdCliente = Venda.IdCliente
INNER JOIN VendaItem 
ON Venda.IdVenda = VendaItem.IdVenda
INNER JOIN Produto 
ON VendaItem.IdProduto = Produto.IdProduto
GROUP BY Cliente.NomeCliente,Cliente.Sexo,Cliente.DataNascimento, Produto.NomeProduto
ORDER BY NomeCliente

-- Exercicio 21

select Produto.NomeProduto, Marca.NomeMarca, cast(COUNT(DISTINCT Venda.IdCliente) as numeric)*100/ 322 as total from Produto
inner join Marca 
on Produto.IdMarca = Marca.IdMarca
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
inner join Cliente
on Venda.IdCliente = Cliente.IdCliente
where DataPagamento is not null
group by Produto.NomeProduto, Marca.NomeMarca
order by total DESC

-- Exercicio 22

select top(10) Cliente.NomeCliente, Cliente.Sexo,
ISNULL(AVG(DATEDIFF(day,Venda.DataVenda,Venda.DataPagamento)),0) as Tempo from Cliente
inner join Venda
ON Venda.IdCliente = Cliente.IdCliente
group by Cliente.NomeCliente, Cliente.Sexo
order by Tempo desc

-- Exercicio 23





-- Exercicio 24
Select FORMAT(Venda.DataVenda, 'yyyy/MM') as DataD, 
AVG (VendaItem.Quantidade) as MediaQuant, 
CAST(AVG(Produto.ValorVenda * VendaItem.Quantidade) as numeric (5,2)) as MediaVal
FROM Venda
Inner Join VendaItem
on Venda.IdVenda = VendaItem.IdVenda
Inner join Produto
on VendaItem.IdProduto = Produto.IdProduto
GROUP BY FORMAT(Venda.DataVenda, 'yyyy/MM')
Order by DataD desc
