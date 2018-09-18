USE Lojadoces;
GO
INSERT INTO Cliente(NomeCliente,DataNascimento,Sexo,Ativo)
	VALUES('Carla Heloisa Corte Real','19960611','F',1),
		('Analu Lara Lima','19930718','F',1),
		('Laura Gabriela Brito','19841111','F',1),
		('Emily Antonella Assunção','19840615','F',1),
		('Daniela Cristiane Carla Cardoso','19450311','F',1),
		('Bruna Marcela Bianca Farias','19630519','F',1),
		('Daiane Fernanda Laís das Neves','19770605','F',1),
		('Thomas Mateus Teixeira','19770324','M',1),
		('Vitor Augusto Lima','19881211','M',1),
		('Cauê Augusto Nelson Bernardes','19981206','M',1),
		('Filipe Diogo Cauê Fernandes','19940426','M',1),
		('Benjamin Lucas da Mata','19900626','M',1),
		('Tiago Otávio Moraes','19900116','M',1),
		('Yuri Matheus Ryan Moreira','19970125','M',1),
		('Giovanni Mateus Francisco das Neves','19970913','M',1),
		('Carlos Eduardo Manoel Augusto Fernandes','19970202','M',1),
		('Kevin Paulo Assunção','19931001','M',1),
		('Gael César Bernardo Porto','19820408','M',1),
		('Henrique Lucca Porto','19821115','M',1),
		('Luan Victor Carvalho','20000320','M',1);

INSERT INTO marca(NomeMarca) 
	VALUES ('HERSHEYS');

INSERT INTO Produto(IdMarca,IdTipoProduto,NomeProduto,QuantidadeEstoque,ValorCompra,ValorVenda)
	VALUES(21,1,'Chocolate ao leite',123,2,3),
		(21,1,'Cookies´n Chocolate',12,3,4),
		(21,1,'Chocotubs Cookies N Creme',10,2.50,3.73),
		(21,1,'Chocotubs ao Leite',5,4,5),
		(21,1,'Io-Iô Crem Duo',43,2,2.50),
		(21,1,'Io-Iô Crem Choco',50,2,2.50),
		(21,1,'Air',12,3.50,4),
		(21,1,'Reese´S Nutrageous',8,1,1.50),
		(21,1,'Extra Cremoso',6,3,4),
		(21,1,'Snack Mix',4,1,2),
		(21,1,'Snack Bites Almond',2,4,5),
		(21,1,'Mais Amendoin',10,3.40,4),
		(21,1,'Reese´S Pieces',4,7,8.32),
		(21,1,'Cookies N Creme',10,3,4.25),
		(21,1,'Choco & Biscuit',74,1,2.97),
		(21,1,'Chocolate Branco',14,4,4.75),
		(21,1,'Chocolate Meio Amargo',7,2,3.50),
		(21,1,'Amendoim',12,2,2.85),
		(21,1,'Cocada',90,0.90,1.25),
		(21,1,'Paçoca',42,0.85,1.25);


CREATE PROCEDURE populaVendas
	AS
		BEGIN
			DECLARE @numeroItens INT,@random INT, @count INT,@countItem INT,@venda INT;
			DECLARE @produto INT,@cliente INT,@qtde INT,@qtdeProduto INT;
			SET @count = 0;
			SET @countItem = 0;

			DECLARE @dataPagamento DATETIME;
			
			DECLARE produtos CURSOR FOR
				SELECT idProduto FROM Produto;
			
			DECLARE clientes CURSOR FOR
				SELECT idCliente FROM Cliente WHERE Ativo = 1;
			
			OPEN produtos
				FETCH NEXT FROM produtos INTO @produto;

			OPEN clientes
				FETCH NEXT FROM clientes INTO @cliente;

			WHILE @count < 50
			BEGIN
				SET @dataPagamento = GETDATE() + (RAND() * (30 - 1) + 1);
				SET @numeroItens = RAND() * (5 - 1) + 1;
				
				INSERT INTO Venda(IdCliente,DataPagamento)
					VALUES(@cliente,@dataPagamento);

				SET @venda = IDENT_CURRENT('Venda');
				
				WHILE @countItem < @numeroItens
				BEGIN
					SELECT @qtdeProduto = QuantidadeEstoque FROM Produto WHERE idProduto = @produto;
					SET @qtde = RAND() * (@qtdeProduto - 1) + 1;

					INSERT INTO VendaItem(IdProduto,IdVenda,Quantidade)
						VALUES(@produto,@venda,@qtde)

					FETCH NEXT FROM produtos INTO @produto;

					SET @countItem = @countItem + 1;
				END

				FETCH NEXT FROM clientes INTO @cliente;

				SET @countItem = 0;
				SET @count = @count + 1;
			END;

			CLOSE clientes;
			CLOSE produtos;
			DEALLOCATE clientes;
			DEALLOCATE produtos;
		END;

