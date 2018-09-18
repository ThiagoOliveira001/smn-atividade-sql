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
	numero smallint not null,
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
	idfuncionario int constraint pk_responsavel primary key identity(1,1),
	dtCadastro date not null constraint df_dtCadastro_responsavel default (getdate()),
	status date not null,
	constraint fk_responsavel_funcionario foreign key (idfuncionario) references Pessoa.funcionario(id)
)
go

create table Pessoa.telefone(
	id int constraint pk_telefone primary key identity(1,1),
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
	dtVenda date not null constraint df_dtVenda_venda default(getdate())
)
go

create table Transacao.compra(
	id int constraint pk_compra primary key identity(1,1),
	idresponsavel int not null constraint fk_compra_responsavel references Administracao.responsavel(idfuncionario),
	dtCompra date not null constraint df_dtCompra_compra default(getdate())
)
go

create table Transacao.pagamento(
	id int constraint pk_pagamento primary key identity(1,1),
	idvenda int not null constraint fk_pagamento_venda foreign key references Transacao.venda(id),
	valorPagamento decimal (4,2) constraint chk_valorPagamento_pagamento check(valorPagamento > 0),
	dtPagamento date not null constraint df_dtPagamento_pagamento default(getdate()),
	dtVencimento date not null constraint df_dtVencimento_pagamento default(getdate()),
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