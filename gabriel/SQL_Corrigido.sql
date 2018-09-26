USE LojaDoces

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) VALUES 
	('Clovis I', 'm', '1945-06-05', 0), 
	('Quildeberto I', 'm', '1970-12-23', 1),
	('Clotário I', 'm', '1950-12-23', 0), 
	('Cariberto I', 'm', '1985-11-29', 1),
	('Quilperico I', 'm', '1990-09-10', 1), 
	('Clotário II', 'm', '2000-10-18', 0),
	('Dagoberto I', 'm', '1980-01-15', 0), 
	('Clóvis II', 'm', '1983-03-05', 1),
	('Clotário III', 'm', '1995-06-03', 1), 
	('Quilderico II', 'm', '1996-05-05', 1),
	('Henrique II', 'm', '1998-07-12', 1), 
	('Carlos IX', 'm', '1991-04-30', 0),
	('Luis XIII', 'm', '1997-02-20', 0), 
	('Napoleao I', 'm', '1980-08-15', 1),
	('Carlos X', 'm', '1992-06-05', 1), 
	('Luis Filipe I', 'm', '1998-04-20', 1),
	('Filipe VI', 'm', '1950-08-10', 0), 
	('Roberto II', 'm', '1973-11-01', 1),
	('Carlomano I', 'm', '1989-08-05', 1), 
	('Carlos I', 'm', '2003-11-11', 0)

INSERT INTO TipoProduto (NomeTipoProduto) VALUES
	('laticinios') 

INSERT INTO Marca (NomeMarca) VALUES
	('Comevap')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque) VALUES
	(8,41,'queijo minas frescal linght', 10.00, 15.50, 10),
	(8,41,'queijo minas frescal', 9.00, 14.50, 10),
	(8,41,'minas padrao', 9.00, 14.50, 10),
	(8,41,'queijo minas padrao', 8.00, 14.50, 10),
	(8,41,'polpa fruta morango 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta morango 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta morango 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta morango 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta pessego 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta pessego 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta pessego 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta pessego 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta mamao banana maca 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta mamao banana maca 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta mamao banana maca 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta mamao banana maca 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta frutas vermelhas 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta frutas vermelhas 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta frutas vermelhas 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta frutas vermelhas 1000g', 4.25, 9.00, 10)


DECLARE @cont INT = 0;
DECLARE @cliente INT = 0;
DECLARE @produto INT = 0;
DECLARE @ultima_venda INT = 0;
DECLARE @cont_produto INT = 0;
DECLARE @num_produto INT = 0;

DECLARE clientes CURSOR FOR
	SELECT IdCliente FROM Cliente WHERE Ativo = 1 and IdCliente >= 500;

DECLARe produtos CURSOR FOR
	SELECT IdProduto FROM Produto WHERE IdProduto >= 523;

OPEN clientes
	FETCH NEXT FROM clientes INTO @cliente;

OPEN produtos
	FETCH NEXT FROm produtos INTO @produto;

WHILE @cont < 50
BEGIN
	INSERT INTO Venda (IdCliente,DataPagamento) VALUES
		(@cliente, GETDATE());

	SET @ultima_venda = IDENT_CURRENT('Venda');

	SET @num_produto = RAND() * (10 - 1) + 1;

	WHILE @cont_produto < @num_produto
	BEGIN
		INSERT INTO VendaItem (IdVenda, IdProduto, Quantidade) VALUES
			(@ultima_venda, @produto, @num_produto);

		SET @cont_produto = @cont_produto + 1
	END

	FETCH NEXT FROM clientes INTO @cliente;

	SET @cont_produto = 0;

	SET @cont = @cont + 1;
END


--EXERCICIO 1
CLOSE clientes;
CLOSE produtos;
DEALLOCATE clientes;
DEALLOCATE produtos;
			
SELECT * 
	FROM Produto WITH(NOLOCK)
	INNER JOIN TipoProduto WITH(NOLOCK)
		ON Produto.IdTipoProduto = TipoProduto.IdTipoProduto
	WHERE TipoProduto.NomeTipoProduto = 'chocolate'

--EXERCICIO 2
select 
			NomeProduto, 
			NomeMarca, 
			NomeTipoProduto, 
			NomeCliente, 
			DataVenda, 
			DataPagamento 
		FROM Venda WITH(NOLOCK)
		INNER JOIN  VendaItem WITH(NOLOCK)
			ON Venda.IdVenda = VendaItem.IdVenda
		INNER JOIN Cliente WITH(NOLOCK)
			ON Venda.IdCliente = Cliente.IdCliente
		INNER JOIN Produto WITH(NOLOCK)
			ON VendaItem.IdProduto = Produto.IdProduto
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		INNER JOIN TipoProduto WITH(NOLOCK)
			ON Produto.IdTipoProduto = TipoProduto.IdTipoProduto
		WHERE DataPagamento >= '2018-01-01' and DataPagamento <= '2018-01-31'

--EXERCICIO 3
SELECT 
			NomeCliente, 
			Sexo 
		FROM Cliente WITH(NOLOCK)
		WHERE MONTH(DataNascimento) = 4 and Ativo = 1

--EXERCICIO 4
SELECT 
			NomeProduto, 
			NomeMarca, 
			ValorVenda, 
			ValorCompra, 
			SUM(QuantidadeEstoque) AS 'Quantidade em Estoque' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		GROUP BY NomeProduto, NomeMarca, ValorVenda, ValorCompra, QuantidadeEstoque

--EXERCICIO 5
SELECT 
			NomeCliente, 
			COUNT(DISTINCT IdProduto) AS 'Produtos Unicos' 
		FROM Cliente WITH(NOLOCK)
		INNER JOIN Venda WITH(NOLOCK)
			ON Cliente.IdCliente = Venda.IdCliente
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Venda.IdVenda = VendaItem.IdVenda
		WHERE YEAR(Venda.DataVenda) = 2018
		GROUP BY NomeCliente

--EXERCICIO 6
SELECT 
			NomeProduto, 
			SUM(Quantidade) AS 'Total Vendido' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN Venda WITH(NOLOCK)
			ON VendaItem.IdVenda = Venda.IdVenda
		WHERE YEAR(DataVenda) = 2018
		GROUP BY NomeProduto

--EXERCICIO 7
SELECT 
			NomeCliente, 
			Sexo, 
			Ativo 
		FROM Cliente WITH(NOLOCK)
		LEFT JOIN Venda WITH(NOLOCK)
			ON Cliente.IdCliente = Venda.IdCliente
		WHERE Venda.IdVenda is Null

--EXERCICIO 8
SELECT TOP(10) 
			NomeCliente, 
			Sexo, 
			COUNT(IdVendaItem) AS 'Quantia Itens', 
			MIN(DataVenda) AS 'Data Pagamento' 
		FROM Cliente WITH(NOLOCK)
		INNER JOIN Venda WITH(NOLOCK)
			ON Cliente.IdCliente = Venda.IdCliente
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Venda.IdVenda = VendaItem.IdVenda
		WHERE Venda.DataPagamento is Null
		GROUP BY NomeCliente, Sexo
		ORDER BY 'Quantia Itens' DESC

--EXERCICIO 9
SELECT 
			NomeMarca,
			COUNT(DISTINCT Produto.IdProduto) AS 'Produtos',
			SUM((ValorVenda-ValorCompra)*Quantidade) AS 'Lucro' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		LEFT JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN Venda WITH(NOLOCK)
			ON VendaItem.IdVenda = Venda.IdVenda
		GROUP BY NomeMarca
		ORDER BY Lucro DESC

--EXERCICIO 10
SELECT 
			NomeProduto, 
			NomeMarca,
			ValorVenda, 
			ValorCompra, 
			NomeCliente, 
			DataVenda 
		FROM Produto WITH(NOLOCK)
		CROSS APPLY (
		SELECT TOP(1) 
					NomeMarca,
					NomeCliente,
					DataVenda 
				FROM VendaItem WITH(NOLOCK)
				INNER JOIN Venda WITH(NOLOCK)
					ON VendaItem.IdVenda = Venda.IdVenda
				INNER JOIN Cliente WITH(NOLOCK)
					ON Venda.IdCliente = Cliente.IdCliente
				INNER JOIN Marca WITH(NOLOCK)
					ON Produto.IdMarca = Marca.IdMarca
				WHERE VendaItem.IdProduto = Produto.IdProduto
				ORDER BY DataVenda DESC) AS tabela
		ORDER BY NomeProduto

--EXERCICIO 11
SELECT 
			NomeMarca, 
			SUM(QuantidadeEstoque) AS 'Total' 
			FROM Produto WITH(NOLOCK)
		INNER JOIN Marca WITH(NOLOCK)
			ON  Produto.IdMarca = Marca.IdMarca 
		GROUP BY NomeMarca

--EXERCICIO 12
SELECT TOP(10) 
			NomeProduto, 
			SUM(Quantidade) AS 'Unidades Vendidas', 
			SUM((ValorVenda - ValorCompra) * (Quantidade)) AS 'Lucro Total' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN Venda WITH(NOLOCK)
			ON VendaItem.IdVenda = Venda.IdVenda
		GROUP BY NomeProduto
		ORDER BY 'Lucro Total' DESC

--EXERCICIO 13
SELECT TOP(15) 
			 NomeCliente,
			 Sexo, DataNascimento, 
			 SUM(Quantidade) AS 'Quantia' 
	FROM Cliente WITH(NOLOCK)
	INNER JOIN Venda WITH(NOLOCK)
		ON Cliente.IdCliente = Venda.IdCliente
	INNER JOIN VendaItem WITH(NOLOCK)
		ON Venda.IdVenda = VendaItem.IdVenda
	WHERE 
		DataPagamento <= GETDATE()
		AND DataPagamento IS NOT NULL
	GROUP BY NomeCliente,Sexo,DataNascimento
	ORDER BY Quantia DESC

--EXERCICIO 14
SELECT 
			NomeProduto 
		FROM Produto WITH(NOLOCK)
		WHERE Produto.NomeProduto like '%cola%'

--EXERCICIO 15
SELECT 
			NomeCliente, 
			Sexo, 
			DataNascimento 
			FROM Cliente WITH(NOLOCK)
	WHERE Cliente.Ativo = 1

--EXERCICIO 16
SELECT 
			NomeProduto, 
			NomeTipoProduto, 
			NomeMarca, 
			ValorVenda 
		FROM Produto WITH(NOLOCK)
		LEFT JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN TipoProduto WITH(NOLOCK)
			ON Produto.IdTipoProduto = TipoProduto.IdTipoProduto
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		WHERE VendaItem.IdVendaItem IS NULL
		ORDER BY NomeTipoProduto

--EXERCICIO 17
SELECT TOP(10) 
			NomeProduto, 
			NomeMarca, 
			ValorCompra, 
			ValorVenda, 
			QuantidadeEstoque AS 'Estoque', 
			SUM(Quantidade) AS 'Vendidos' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		INNER JOIN Venda WITH(NOLOCK)
			ON VendaItem.IdVenda = Venda.IdVenda
		GROUP BY NomeProduto, NomeMarca, ValorCompra,ValorVenda,QuantidadeEstoque
		ORDER BY Vendidos DESC

--EXERCICIO 18
SELECT 
			NomeMarca, 
			COALESCE(
				(SELECT CAST(NomeProduto AS VARCHAR(50)) + ', ' AS [text()]
					FROM Produto WITH(NOLOCK)
					WHERE Produto.IdMarca = Marca.IdMarca
					FOR XML PATH(''),TYPE).VALUE('.[1]','varchar(max)'),'') AS 'Produtos'
		FROM Marca WITH(NOLOCK)

--EXERCICIO 19
SELECT 
			FORMAT(DataVenda, 'yyyy/MM') AS 'data', 
			SUM(CASE WHEN DataPagamento IS NOT NULL AND DataPagamento < GETDATE() THEN 1 ELSE 0 END) AS 'vendas pagas',
			SUM(CASE WHEN DataPagamento IS NULL OR DataPagamento > GETDATE() THEN 1 ELSE 0 END) AS 'vendas nao pagas'
		FROM Venda WITH(NOLOCK)
		GROUP BY FORMAT(DataVenda, 'yyyy/MM')

--EXEERCICIO 20
SELECT			
			cl.NomeCliente,
			cl.Sexo,
			DATEDIFF(year, cl.DataNascimento, GETDATE()) AS Idade,
			ISNULL(aux.NomeProduto, '') AS ProdutoFavorito,
			ISNULL(aux.Soma, '') AS Quandidade
		FROM Cliente cl WITH(NOLOCK)
		OUTER APPLY (
			SELECT TOP(1) 
					pr.NomeProduto, 
					SUM(vi.Quantidade) as Soma
				FROM Venda ve WITH(NOLOCK)
				INNER JOIN VendaItem vi WITH(NOLOCK)
					ON ve.IdVenda = vi.IdVenda
				INNER JOIN Produto pr
					ON vi.IdProduto = pr.IdProduto
				WHERE ve.IdCliente = cl.IdCliente
				GROUP BY pr.NomeProduto
				ORDER BY Soma DESC
			) AS aux
			ORDER BY cl.NomeCliente

--EXERCICIO 21
SELECT 
			NomeProduto, 
			NomeMarca,
			((COUNT(DISTINCT Venda.IdCliente)/CAST((SELECT COUNT(*)FROM Cliente) AS NUMERIC))*100) AS 'Porcentagem' 
		FROM Produto WITH(NOLOCK)
		INNER JOIN VendaItem WITH(NOLOCK)
			ON Produto.IdProduto = VendaItem.IdProduto
		INNER JOIN Venda WITH(NOLOCK)
			ON VendaItem.IdVenda = Venda.IdVenda
		INNER JOIN Cliente WITH(NOLOCK)
			ON Venda.IdCliente = Cliente.IdCliente
		INNER JOIN Marca WITH(NOLOCK)
			ON Produto.IdMarca = Marca.IdMarca
		WHERE DataPagamento IS NOT NULL AND DataPagamento < GETDATE()
		GROUP By NomeProduto, NomeMarca
		ORDER BY Porcentagem DESC

--EXERCICIO 22
SELECT TOP(10) 
			NomeCliente, 
			Sexo, ISNULL(AVG(DATEDIFF(DAY, DataVenda, DataPagamento)),0) AS 'Tempo Medio' 
		FROM Cliente
		INNER JOIN Venda WITH(NOLOCK)
			ON Cliente.IdCliente =  Venda.IdCliente
		WHERE DataPagamento IS NOT NULL AND DataPagamento < GETDATE()
		GROUP BY NomeCliente, Sexo
		ORDER BY [Tempo Medio]
	
--EXERCIO 23
SELECT 
			cl.NomeCliente,
			ve.DataVenda,
			aux.Gasto,
			SUM(aux.Gasto) OVER (
				PARTITION BY cl.NomeCLiente
				ORDER BY cl.NomeCliente, ve.DataVenda
				ROWS UNBOUNDED PRECEDING
			) AS Acom
		FROM Cliente cl WITH(NOLOCK)
		INNER JOIN Venda ve WITH(NOLOCK)
			ON cl.IdCliente = ve.IdCliente
		CROSS APPLY(
			SELECT
					SUM((vi.Quantidade * pr.ValorVenda)) AS Gasto
				FROM VendaItem vi WITH(NOLOCK)
				INNER JOIN Produto pr WITH(NOLOCK)
					ON vi.IdProduto = pr.IdProduto
				WHERE vi.IdVenda = ve.IdVenda
			) AS aux
		GROUP BY cl.NomeCliente, ve.DataVenda, aux.Gasto
		ORDER BY cl.NomeCliente, ve.DataVenda

--EXERCIO 24
SELECT
			FORMAT(ve.DataVenda,'MM/yyyy') AS 'DataVenda',
			AVG(vi.Quantidade) AS 'MediaQuantia',
			FORMAT(AVG((pr.ValorVenda * vi.Quantidade)),'#0.00') AS 'MediaValor'
		FROM VendaItem vi WITH(NOLOCK)
			INNER JOIN Venda ve WITH(NOLOCK)
				ON vi.IdVenda = ve.IdVenda
			INNER JOIN Produto pr WITH(NOLOCK)
				ON vi.IdProduto = pr.IdProduto
			GROUP BY FORMAT(ve.DataVenda, 'MM/yyyy')
			ORDER BY 'DataVenda'

