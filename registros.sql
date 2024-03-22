use Senac
-- criando os registros do banco de dados senac

INSERT INTO endereco (rua, bairro, numero, cidade, cep)
VALUES
('Av. Senador Salgado Filho', 'Centro', 1234, 'Natal', '59020-000'),
('Rua do Sol', 'Ponta Negra', 5678, 'Natal', '59090-000'),
('Rua da Paz', 'Rocas', 9012, 'Natal', '59070-000'),
('Av. Hermes da Fonseca', 'Petr�polis', 3456, 'Natal', '59060-000'),
('Rua Jo�o Pessoa', 'Cidade Alta', 7890, 'Natal', '59050-000'),
('Rua 1� de Maio', 'M�e Lu�za', 2345, 'Parnamirim', '59140-000'),
('Rua dos Girass�is', 'Nova Parnamirim', 6789, 'Parnamirim', '59150-000'),
('Rua das Flores', 'Pitimbu', 1122, 'Pitimbu', '59170-000'),
('Rua da Amizade', 'S�o Jos� de Mipibu', 3344, 'S�o Jos� de Mipibu', '59160-000'),
('Av. Epit�cio Pessoa', 'Lagoa Nova', 5566, 'Natal', '59080-000'),
('Rua dos Girass�is', '123', 'Centro', 'Natal', '59010-000'),
('Rua das Flores', '456', 'Ponta Negra', 'Natal', '59090-000'),
('Rua da Paz', '789', 'Petr�polis', 'Natal', '59020-000'),
('Rua da Esperan�a', '101', 'Dix-Sept Rosado', 'Parnamirim', '59140-000'),
('Rua da Alegria', '234', 'Pitimbu', 'Parnamirim', '59150-000'),
('Rua da Amizade', '567', 'Nova Parnamirim', 'Parnamirim', '59160-000'),
('Rua do Sol', '890', 'Parque das �rvores', 'S�o Jos� de Mipibu', '59290-000'),
('Rua da Lua', '1234', 'Centro', 'S�o Jos� de Mipibu', '59300-000');

INSERT INTO endereco (rua, bairro, numero, cidade, cep)
VALUES
('Av. Senador Salgado Filho', 'Centro', 1234, 'Natal', '59020-000'),
('Rua do Sol', 'Ponta Negra', 5678, 'Natal', '59090-000'),
('Rua da Paz', 'Rocas', 9012, 'Natal', '59070-000'),
('Av. Hermes da Fonseca', 'Petr�polis', 3456, 'Natal', '59060-000'),
('Rua Jo�o Pessoa', 'Cidade Alta', 7890, 'Natal', '59050-000'),
('Rua 1� de Maio', 'M�e Lu�za', 2345, 'Parnamirim', '59140-000'),
('Rua dos Girass�is', 'Nova Parnamirim', 6789, 'Parnamirim', '59150-000'),
('Rua das Flores', 'Pitimbu', 1122, 'Pitimbu', '59170-000');



select * from endereco

INSERT INTO senac_unidade (id_endereco, nome, telefone, site)
VALUES
(2, 'SENAC Centro', '(84) 3201-2200', 'www.senacrn.com.br'),
(3, 'SENAC Ponta Negra', '(84) 3219-2300', 'www.senacrn.com.br/ponta-negra'),
(4, 'SENAC Parnamirim', '(84) 3644-2400', 'www.senacrn.com.br/parnamirim'),
(5, 'SENAC S�o Jos� de Mipibu', '(84) 3232-2500', 'www.senacrn.com.br/sao-jose-de-mipibu');


INSERT INTO funcionario (nome, cpf, id_endereco, telefone, email, salario, data_admissao)
VALUES
('Jos� Costa', '00000000001', 9, '(84) 99876-5431', 'jose.costa@senac.rn.gov.br', 2700.00, '2023-05-05'),
('Mariana Silva', '11111111111', 10, '(84) 99876-5432', 'mariana.silva@senac.rn.gov.br', 2800.00, '2023-06-06'),
('Carlos Oliveira', '22222222222', 11, '(84) 99876-5433', 'carlos.oliveira@senac.rn.gov.br', 2900.00, '2020-07-07'),
('Ana Santos', '33333333333', 12, '(84) 99876-5434', 'ana.santos@senac.rn.gov.br', 3000.00, '2015-08-08'),
('Jo�o Fernandes', '44444444444', 13, '(84) 99876-5435', 'joao.fernandes@senac.rn.gov.br', 3100.00, '2010-09-09'),
('Maria Gomes', '55555555555', 14, '(84) 99876-5436', 'maria.gomes@senac.rn.gov.br', 3200.00, '2021-10-10'),
('Pedro Souza', '66666666666', 15, '(84) 99876-5437', 'pedro.souza@senac.rn.gov.br', 3300.00, '2019-11-11'),
('Camila Andrade', '77777777777', 16, '(84) 99876-5438', 'camila.andrade@senac.rn.gov.br', 3400.00, '2023-12-12'),
('Bruno Lima', '88888888888', 17, '(84) 99876-5439', 'bruno.lima@senac.rn.gov.br', 3500.00, '2018-01-01'),
('Fernanda Melo', '99999999999', 18, '(84) 99876-5440', 'fernanda.melo@senac.rn.gov.br', 3600.00, '2020-02-02'),
('Rafael Silva', '12345678910', 19, '(84) 99876-5441', 'rafael.silva@senac.rn.gov.br', 3700.00, '2021-03-03'),
('Gabriela Oliveira', '11111111121', 20, '(84) 99876-5442', 'gabriela.oliveira@senac.rn.gov.br', 3800.00, '2022-03-04'),
('Leonardo Costa', '22222222232', 21, '(84) 99876-5443', 'leonardo.costa@senac.rn.gov.br', 3900.00, '2024-03-05'),
('Luisa Fernandes', '33333333343', 22, '(84) 99876-5444', 'luisa.fernandes@senac.rn.gov.br', 4000.00, '2020-03-06'),
('Eduardo Gomes', '44444444454', 23, '(84) 99876-5445', 'eduardo.gomes@senac.rn.gov.br', 4100.00, '2019-03-07'),
('Mariana Souza', '55555555565', 24, '(84) 99876-5446', 'mariana.souza@senac.rn.gov.br', 4200.00, '2012-03-08'),
('Felipe Andrade', '66666666676', 25, '(84) 99876-5447', 'felipe.andrade@senac.rn.gov.br', 4300.00, '2014-03-09'),
('Julia Lima', '77777777787', 26, '(84) 99876-5448', 'julia.lima@senac.rn.gov.br', 4400.00, '2013-03-10'),
('Victor Melo', '88888888898', 27, '(84) 99876-5449', 'victor.melo@senac.rn.gov.br', 4500.00, '2019-03-11'),
('Ana Clara Costa', '99999999909', 27, '(84) 99876-5450', 'ana.clara.costa@senac.rn.gov.br', 4600.00, '2017-03-12');

ALTER TABLE funcionario ALTER COLUMN telefone char(15)
select * from funcionario

ALTER TABLE senac_unidade DROP COLUMN id_endereco;
