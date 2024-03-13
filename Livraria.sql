create database livraria;
use livraria;

create table cliente(
	cod_cliente int primary key,
	nome nvarchar(50),
	email nvarchar(50),
	telefone1 char(11),
	telefone2 char(11),
	rua nvarchar(50),
	bairro nvarchar(50),
	cidade char(15),
	estado char(20)
);

create table pessoa_fisica(
	rg char(6),
	cpf char(11),
	cod_cliente int,
	foreign key (cod_cliente) references cliente(cod_cliente)
);

create table pessoa_juridica(
	ie char(11),
	cod_cliente int,
	foreign key (cod_cliente) references cliente(cod_cliente)
	);

create table pedido(
	cod_pedido int primary key,
	data date,
	valor_pedido decimal(6,2),
	cod_cliente int
	foreign key (cod_cliente) references cliente(cod_cliente)
);


create table editora(
	cod_editora int primary key,
	telefone1 char(11),
	telefone2 char(11),
	nome_contato nvarchar(50),
	email nvarchar(50)
);

create table livro(
	cod_livro int primary key,
	cod_editora int
	foreign key (cod_editora) references editora(cod_editora),
	valor decimal(6,2),
	ano_publicado int,
	caregoria char(20),
	titulo char(50),
	autor char(50),
);

create table estoque(
	cod_editora int
	foreign key (cod_editora) references editora(cod_editora),
	cod_livro int
	foreign key (cod_livro) references livro(cod_livro),
	qtde_estoque int
);

create table item_pedido(
	cod_pedido int
	foreign key (cod_pedido) references pedido (cod_pedido),
	cod_livro int
	foreign key (cod_livro) references livro (cod_livro),
	qtdepedido int,
	valor_item decimal(5,2)
);

--========================
--========================
insert into cliente(cod_cliente, nome, email, telefone1, telefone2, rua, bairro, cidade, estado) values
--pessoa fisica
(5499,'Matheus','matheus@senac.com','12345678912','98745632125', 'rua senac', 'zn','Natal', 'Rio grande do norte'),
--pessoa juridica
(6633,'Marcos','marcos@senac.com','74125896336','8745663211', 'rua senac', 'zn','Natal', 'Rio grande do norte')

insert into pessoa_fisica(rg, cpf, cod_cliente) values
('123456',12332145689,5499)

insert into pessoa_juridica(ie, cod_cliente) values
('000111222',6633)

--alter table pessoa_juridica
--alter column ie char(9);

insert into pedido(cod_pedido, data,valor_pedido, cod_cliente) values
(12, '20240312', 130.00,5499)

select * from pedido