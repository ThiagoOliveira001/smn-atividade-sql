use LojaDoces
go

select FORMAT ( DATAVENDA, 'MM/yyyy') AS DATAS  ,
		SUM(CASE WHEN DataPagamento IS null THEN 1 ELSE  0 END) as ProdutosNãoPagos,
		SUM(CASE WHEN DataPagamento IS not null THEN 1 ELSE 0 END) as ProdutosPagos
	FROM Venda
	GROUP BY FORMAT ( DataVenda, 'MM/yyyy'),FORMAT ( DATAVENDA, 'yyyy')
	ORDER BY FORMAT ( DATAVENDA, 'yyyy')