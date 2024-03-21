create database Senac
use senac

create table endereco(
id_endereco int identity (1,1) primary key,
rua nvarchar(50) not null,
bairro nvarchar(50) not null,
numero int,
cidade nvarchar(30) not null,
cep char(8) not null
);

create table senac_unidade(
id_unidade int identity (1,1) primary key,
id_endereco int,
foreign key (id_endereco) REFERENCES endereco (id_endereco) ,
nome varchar(30) not null,
telefone char(11) not null,
site char(50),
);

create table funcionario(
id_funcionario int identity (1,1) primary key,
nome nvarchar(50) not null unique,
cpf char(11) unique not null,
id_endereco int,
foreign key (id_endereco) references endereco (id_endereco),
telefone char(11),
email nvarchar(50) unique,
);

create table instrutor(
nivel char(1) not null,
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table horista (
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table mensalista (
carga_horaria time not null,
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table aluno(
id_aluno int identity(1,1) primary key,
id_endereco int,
foreign key (id_endereco) references endereco(id_endereco),
nome nvarchar(50) unique not null,
cpf char(11) unique not null,
data_nascimento date unique not null,
telefone char(11) not null,
email char(50) not null,
);

create table comercial(
id_aluno int,
foreign key (id_aluno) references aluno (id_aluno),
);

create table bolsista(
id_aluno int,
foreign key (id_aluno) references aluno (id_aluno),
);

create table psg(
id_aluno int,
foreign key (id_aluno) references aluno (id_aluno),
);

create table curso(
id_curso int identity(1,1) primary key,
nome_curso nvarchar(50) unique not null,
carga_horaria time not null,
);

create table modalidade_presencial(
id_curso int,
foreign key (id_curso) references curso (id_curso)
);

create table modalidade_ead(
id_curso int,
foreign key (id_curso) references curso (id_curso)
);

create table curso_tecnico(
id_curso int,
foreign key (id_curso) references curso(id_curso)
);

create table curso_livre(
id_curso int,
foreign key (id_curso) references curso(id_curso)
);

create table curso_graduacao(
id_curso int,
foreign key (id_curso) references curso(id_curso)
);

create table turma(
id_turma int identity(1,1) primary key,
id_curso int,
foreign key (id_curso) references curso (id_curso),
id_aluno int,
foreign key (id_aluno) references aluno (id_aluno),
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario),
data_inicio date not null,
horario time not null
);