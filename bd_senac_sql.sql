create database Senac
use senac

create table endereco(
id_endereco int identity (1,1) primary key,
rua nvarchar(50) not null,
bairro nvarchar(50) not null,
numero int,
cidade nvarchar(30) not null,
cep char(9) not null
);

create table senac_unidade(
id_unidade int identity (1,1) primary key,
id_endereco int,
foreign key (id_endereco) REFERENCES endereco (id_endereco) ,
nome varchar(30) not null,
telefone char(14) not null,
site char(50),
);

ALTER TABLE funcionario alter column cpf char(14);

create table funcionario(
id_funcionario int identity (1,1) primary key,
nome nvarchar(50) not null unique,
cpf char(1) unique not null,
id_endereco int,
foreign key (id_endereco) references endereco (id_endereco),
telefone char(14),
email nvarchar(50) unique,
salario decimal(6,2) unique not null,
data_admissao date
);



create table instrutor(
nivel char(1) not null,
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table coordenador(
nivel char(1) not null,
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table diretor(
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table pedagogo(
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table tecnico_Ti(
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table porteiro(
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table secretario(
id_funcionario int,
foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table asg(
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
telefone char(14) not null,
email char(50) not null,
sexo char(1) unique
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
 duracao int,
 preco decimal(6,2) not null
);

ALTER TABLE curso ADD preco decimal(6,2) not null; --numero de meses

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

create table beleza(
id_curso int
foreign key (id_curso) references curso (id_curso_)
);

create table comercio(
id_curso int
foreign key (id_curso) references curso (id_curso)
);

create table comunicacao(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table design(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table gastronomia(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table idiomas(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table informatica(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table saude(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table seguranca(
id_curso int
foreign key (id_curso) references curso (id_curso)_
);

create table turismo(
id_curso int
foreign key (id_curso) references curso (id_curso)
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
horario time not null,
vagas_disponiveis int not null
);

