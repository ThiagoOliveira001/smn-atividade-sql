use LojaDoces
go

select FORMAT ( DATAVENDA, 'MM/yyyy') AS DATAS,
		FORMAT(AVG(p.ValorVenda) , '#0.00' ) as mediaPreco,
		AVG(vi.Quantidade) as mediaQuantidade
	from venda as v
	inner join VendaItem as vi on vi.IdVenda = v.IdVenda
	inner join Produto as p on p.IdProduto = vi.IdProduto
	GROUP BY FORMAT ( DataVenda, 'MM/yyyy'),FORMAT ( DATAVENDA, 'yyyy')
	ORDER BY FORMAT ( DATAVENDA, 'yyyy')