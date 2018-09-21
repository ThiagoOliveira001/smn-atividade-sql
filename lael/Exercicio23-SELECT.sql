--Listar o valor gasto acumulado por cliente e data

SELECT C.NomeCliente, FORMAT (v.DataVenda,'dd/MM/yyyy','en-gb') AS Data, FORMAT (v.DataVenda,'HH:mm:ss','en-gb') AS Horario, CA.ValorGasto,  
		CONVERT(VARCHAR(20), SUM(CA.ValorGasto) OVER(PARTITION BY C.NomeCliente ORDER BY V.IdVenda),1) AS ValorAcumulado
	FROM Cliente AS C
	INNER JOIN Venda AS V
	ON V.IdCliente = C.IdCliente
CROSS APPLY(
	SELECT SUM(VI.Quantidade * P.ValorVenda ) AS ValorGasto
	FROM VendaItem AS VI
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	INNER JOIN Venda AS VE
	ON VI.IdVenda = VE.IdVenda
	WHERE v.IdVenda = VE.IdVenda 
) AS CA
ORDER BY c.NomeCliente