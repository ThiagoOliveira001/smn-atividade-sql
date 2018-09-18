
create table cliente 
	(id smallint primary key identity(100,1),
	nome varchar(50) not null, 
	email varchar(100) not null, 
	cpf numeric (11) not null unique);

create table telefone
	(id smallint primary key identity(1,1),
	nemuro numeric(11) not null,
	idcliente smallint not null,
	constraint fk_telefone_cliente foreign key (idcliente) references cliente(id));

create table marca
	(id smallint primary key identity(1,1),
	nome varchar(50) not null);

create table categoria
	(id smallint primary key identity(1,1),
	categoriaproduto varchar(50) not null);

create table venda
	(id smallint primary key identity(1,1),
	dtvenda date not null,
	idcliente smallint not null,
	constraint fk_venda_cliente foreign key (idcliente) references cliente(id));

create table itemvenda
	(id smallint primary key identity (1,1),
	qndeitemvenda integer not null,
	precovenda money not null,
	idvenda smallint not null,
	constraint fk_itemvenda_venda foreign key (idvenda) references venda(id));
	
create table produto
	(id smallint primary key identity,
	nome varchar(50) not null,
	precovenda money not null,
	descricao varchar not null ,
	idcategoria smallint not null,
	idmarca smallint not null,
	iditemvenda smallint not null,
	constraint fk_produto_categoria foreign key(idcategoria) references categoria(id),
	constraint fk_produto_marca foreign key(idmarca) references marca(id),
	constraint fk_produto_itemvenda foreign key (iditemvenda) references itemvenda(id),
	 );

create table itemaquisicao
	(id smallint primary key identity (1,1),
	qndeitemadquirido bigint not null,
	precoaquisicao money not null,
	idproduto smallint not null,
	constraint fk_itemaquisicao_produto foreign key(idproduto) references produto(id));

create table pgto
	(id smallint primary key identity(1,1),
	dtpgto date not null,
	pago bit not null,
	idvenda smallint not null,
	idcliente smallint not null, 
	constraint fk_pgto_venda foreign key (idvenda) references venda(id),
	constraint fk_pgto_cliente foreign key (idcliente) references cliente(id));


	create table tipopgto
	(id smallint primary key identity (1,1),
	tipo varchar(50) not null,
	idpgto smallint
	constraint fk_tipopgto_pgto foreign key (idpgto) references pgto (id));

	






