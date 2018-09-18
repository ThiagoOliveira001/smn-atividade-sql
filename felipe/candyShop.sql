--use Master
--go
--drop database CandyShop

create database CandyShop
go
use CandyShop
go

create schema Pessoa
go
create schema Administracao
go
create schema Transacao
go

create table Administracao.empresa(
	id int constraint pk_empresa primary key identity(1,1),
	razaoSocial varchar(100) not null,
	logradouro varchar(100) not null,
	numero smallint,
	complemento varchar(30),
	bairro varchar(75) not null,
	cep int not null,
	municipio varchar(75) not null,
	estado varchar(2) not null
)
go

create table Pessoa.funcionario(
	id int constraint pk_funcionario primary key identity(1,1),
	nome varchar(100) not null,
	dtNasc date not null constraint ck_dtNasc check(getdate() > dtNasc),
	cpf bigint not null constraint un_cpf_funcionario unique,
	dataCadastro date not null constraint df_dataCadastro_funcionario default(getdate()),
	atividade bit not null,
	logradouro varchar(100) not null,
	numero smallint not null,
	complemento varchar(30),
	bairro varchar(75) not null,
	cep int not null,
	municipio varchar(75) not null,
	estado varchar(2) not null,
	idempresa int constraint fk_funcionario_empresa foreign key references Administracao.empresa(id) not null
)
go 

create table Administracao.responsavel(
	idfuncionario int constraint pk_responsavel primary key,
	dtCadastro date not null constraint df_dtCadastro_responsavel default (getdate()),
	situacao bit not null,
	constraint fk_responsavel_funcionario foreign key (idfuncionario) references Pessoa.funcionario(id)
)
go

create table Pessoa.telefone(
	id int constraint pk_telefone primary key identity(1,1),
	ddd tinyint not null,
	numero bigint not null constraint un_numero_telefone unique,
	idfuncionario int not null constraint fk_telefone_funcionario foreign key references Pessoa.funcionario(id)
)
go

create table Transacao.produto(
	id int constraint pk_produto primary key identity(1,1),
	nome varchar(60) not null constraint un_nome_produto unique,
	descricao varchar (100) not null
)
go

create table Transacao.venda(
	id int constraint pk_venda primary key identity(1,1),
	idfuncionario int not null constraint fk_venda_funcionario foreign key references Pessoa.funcionario(id),
	idresponsavel int not null constraint fk_venda_responsavel foreign key references Administracao.responsavel(idfuncionario),
	dtVencimento date not null,
	dtVenda smalldatetime not null constraint df_dtVenda_venda default(getdate()),
)
go

create table Transacao.compra(
	id int constraint pk_compra primary key identity(1,1),
	idresponsavel int not null constraint fk_compra_responsavel references Administracao.responsavel(idfuncionario),
	dtCompra smalldatetime not null constraint df_dtCompra_compra default(getdate())
)
go

create table Transacao.pagamento(
	id int constraint pk_pagamento primary key identity(1,1),
	idvenda int not null constraint fk_pagamento_venda foreign key references Transacao.venda(id),
	valorPagamento decimal (4,2) constraint chk_valorPagamento_pagamento check(valorPagamento > 0),
	dtPagamento smalldatetime not null constraint df_dtPagamento_pagamento default(getdate()),
	consideracao varchar(75)
)
go

create table Transacao.vendaProduto(
	idproduto int constraint fk_vendaProduto_produto foreign key references Transacao.produto(id),
	idvenda int constraint fk_vendaProduto_venda foreign key references Transacao.venda(id),
	qtde int not null constraint chk_qtde_vendaProduto check (qtde > 0),
	preco decimal(4,2) not null constraint chk_preco_vendaProduto check(preco > 0)
)
go

create table Transacao.compraProduto(
	idproduto int constraint fk_compraProduto_produto foreign key references Transacao.produto(id),
	idcompra int constraint fk_compraProduto_compra foreign key references Transacao.compra(id),
	qtde int not null constraint chk_qtde_compraProduto check (qtde > 0),
	preco decimal(4,2) not null constraint chk_preco_compraProduto check(preco > 0)
)
go

create index ix_Funcionario on Pessoa.Funcionario(nome)
go
create index ix_Produto on Transacao.Produto(nome);

go

--create or alter view Transacao.estoque
--as
--	select e.id as id,p.nome as produto,
--		cp.qtde as compra,
--		vp.qtde as vendas
--		from [Transacao].[compraProduto] as cp 
--		right join [Transacao].[produto] as p on cp.idproduto = p.id
--		right join [Transacao].[vendaProduto] as vp on vp.idproduto = p.id
--		right join [Transacao].[venda] as v on v.id = vp.idvenda 
--		right join [Transacao].[compra] as c on c.id = cp.idcompra
--		inner join [Administracao].[responsavel] as r on r.idfuncionario = c.idresponsavel
-- 		inner join [Pessoa].[funcionario] as f on f.id = r.idfuncionario
--		inner JOIN [Administracao].[empresa] as e on e.id = f.idempresa
--		where c.idresponsavel =v.idresponsavel
--	group by e.id,p.nome,cp.qtde,vp.qtde
--go
--create procedure Transacao.estoque as
--begin
--	declare
--	@compra table(idproduto int,idcompra int,qtde int,preco decimal(4,2)),
--	@venda table

--	insert into @compra


--end

create view Transacao.relatorioCompra
as
	select p.nome as produto, p.descricao as descrição ,
	f.nome as NomeResponsavél, 
	c.dtCompra as DataDeCompra,
	cp.qtde as quantidade, cp.preco as preço
	from [Transacao].[compraProduto] as cp
	inner join [Transacao].[produto] as p on p.id = cp.idproduto
	inner join [Transacao].[compra] as c on c.id = cp.idcompra
	inner join [Administracao].[responsavel] as r on r.idfuncionario = c.idresponsavel
	inner join [Pessoa].[funcionario] as f on f.id = r.idfuncionario
go

insert into Administracao.empresa(razaoSocial,logradouro,numero,complemento,bairro,cep,municipio,estado) values
('SMN Sede','Avenida 12',2143,'Proximo ao Posto','Polo Industrial',14562453,'Franca','SP'),
('SMN Filial','Rua 14',2143,'Proximo ao parque municipal','Jardim Nova Orlândia',14620000,'Orlandia','SP')
go
insert into Pessoa.funcionario(nome,dtNasc,cpf,logradouro,numero,complemento,bairro,cep,municipio,estado,idempresa) values
('Juvenal','19871206',5412542,1,'Rua Chinchila',1344,null,'Balaco Baco',13545747,'Cirandinha','SP',1),
('Jair','19760620',17171717,1,'Rua Presidente',17,null,'Eleição',45245752,'Brasilia','BR',1),
('Cornélson','19970130',14536968,0,'Avenida Novacidade',2512,null,'Jardim das Flores',13545747,'Nova Leste','SP',2),
('Lilian','19951123',56367747,1 ,'Avenida Imperial',0065,null,'Coraline',63463096,'Sertaozão','MG',2)


go
insert into Administracao.responsavel(idfuncionario,situacao)  values
(2,1),
(3,0),
(4,1)

go

insert into Transacao.produto(nome,descricao) values
('Bis Branco caixa 12 unidades','Produto com alto teor de açucar'),
('Refrigerante sabor laranja 2 litros','Produto refrigerado'),
('Bombom sonho de valsa 50 gramas','Bombom muito procurado')

go

insert into Transacao.compra(idresponsavel) values 
(2),
(4)

go

insert into Transacao.venda(idfuncionario,idresponsavel,dtVencimento) values
(1,2,'20180927'),
(4,4,'20180110')


go
insert into Transacao.vendaProduto(idproduto,idvenda,qtde,preco) values
(1,1,10,1.50),
(2,1,20,3.00),
(3,2,12,0.75)

go
insert into Transacao.compraProduto(idproduto,idcompra,qtde,preco) values
(2,1,100,1.50),
(1,1,200,0.75),
(3,1,250,0.25),
(3,2,50,2.00),
(2,2,60,1.75)