create table cliente 
	(id smallint primary key identity(100,1),
	nome varchar(50) not null, 
	email varchar(100) not null, 
	cpf numeric (11) not null unique);

create table marca
	(id smallint primary key identity(2,2),
	nome varchar(50) not null);

create table categoria
	(id smallint primary key identity(3,2),
	categoria_produto varchar(50) not null);
	
create table venda
	(id smallint primary key identity (10,2),
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


drop table produto
--create table itemaquisicao
--	(id smallint primary key identity (1,1),
--	qndeitemaquisicao bigint not null,
--	precoaquisicao money not null
--	constraint fk_aquisicao_itemaquisicao foreign key(id) references aquisicao(id))
