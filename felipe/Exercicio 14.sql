use LojaDoces
go

select NomeProduto
	from Produto
	where NomeProduto like '%cola%' collate Latin1_General_CS_AS
	--o collate torna o %cola& sensivel para maiusculas ou minusculas, o caso abaixo � case insensitive
	--select NomeProduto
	--from Produto
	--where NomeProduto like '%cola%'