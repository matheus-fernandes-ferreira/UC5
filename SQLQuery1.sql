--Criar meu banco de dados
create database pop;
--usar o banco criado
use pop;
--criando a tabela cliente
create table conta(
	nome nvarchar(50),
	cpf char(11),
	telefone char(11)
);

create table passageiro(
	id_passageiro int primary key,
	score_passageiro decimal(2,1),
);

create table motorista(
	id_motorista int primary key,
	score_motorista decimal(2,1),
	cnh int,
);

create table veiculo(
	id_veiculo int,
	modelo_veiculo nvarchar(15),
	placa_veiculo char(7),
	cor_veiculo nvarchar (10),
	ano_veiculo char(4),
);

create table carro(
	numero_passageiros int
);

create table moto(
id_moto int primary key
);

create table avaliacao(
	id_avaliacao int,
	comentario char(250),
	nota int
);

create table viagem(
	distancia_viagem decimal(3,2),
	id_corrida int primary key,
	horario_corrida time,
	tipo_corrida char(10)
);

create table pagamento(
	id_pagamento int,
	valor_base decimal(5,2),
	taxa_quilometro decimal(3,2)
);

create table promocao(
	id_promocao int,
	codigo_promocao int,
	desconto decimal(4,2),
	data_validade date,
);


--======================================
--adicionando registros na tabela

insert into conta(nome, cpf, telefone) values
('Matheus', '12345678912', '99998877'),
('Lucas', '12345678952', '99998877')

insert into passageiro (id_passageiro, score_passageiro) values
(123,5),
(362,4),
(027,5)

insert into motorista (id_motorista, score_motorista) values
(444, 5),
(321, 4)

insert into veiculo (id_veiculo, modelo_veiculo, placa_veiculo, cor_veiculo, ano_veiculo) values
(222, 'corola', 'OTM2X22', 'vermelho', '2000'),
(333, 'prisma', 'MTH4X22', 'vermelho', '2000')

insert into moto (id_moto) values
(432)

insert into avaliacao (id_avaliacao, comentario, nota) values
(852, 'o motorista corre muito', 3),
(466, 'mudou a rota', 3)

insert into corrida (distancia_corrida, id_corrida, horario_corrida, tipo_corrida) values
(001.2, 8623, 1400, 'conforto'),
(008.2, 3987, 1235, 'pop')


--==========================================
--==========================================

select * from veiculo

--==========================================
--==========================================

--alterar o nome da tabela
exec sp_rename 'corrida','viagem';

--alterar o nome dos cmapos/atributos
exec sp_rename 'viagem.distancia_corrida', 'distancia_viagem';

--alterar registros
update veiculo
set modelo_veiculo = 'fusca'
where id_veiculo = '222'
