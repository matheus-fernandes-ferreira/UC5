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
('Rua da Lua', '1234', 'Centro', 'S�o Jos� de Mipibu', '59300-000'),
('Av. Senador Salgado Filho', 'Centro', 1234, 'Natal', '59020-000'),
('Rua do Sol', 'Ponta Negra', 5678, 'Natal', '59090-000'),
('Rua da Paz', 'Rocas', 9012, 'Natal', '59070-000'),
('Av. Hermes da Fonseca', 'Petr�polis', 3456, 'Natal', '59060-000'),
('Rua Jo�o Pessoa', 'Cidade Alta', 7890, 'Natal', '59050-000'),
('Rua 1� de Maio', 'M�e Lu�za', 2345, 'Parnamirim', '59140-000'),
('Rua dos Girass�is', 'Nova Parnamirim', 6789, 'Parnamirim', '59150-000'),
('Rua das Flores', 'Pitimbu', 1122, 'Pitimbu', '59170-000');


INSERT INTO senac_unidade (id_endereco, nome, telefone, site)
VALUES
(2, 'SENAC Centro', '(84) 3201-2200', 'www.senacrn.com.br'),
(3, 'SENAC Ponta Negra', '(84) 3219-2300', 'www.senacrn.com.br/ponta-negra'),
(4, 'SENAC Parnamirim', '(84) 3644-2400', 'www.senacrn.com.br/parnamirim'),
(5, 'SENAC S�o Jos� de Mipibu', '(84) 3232-2500', 'www.senacrn.com.br/sao-jose-de-mipibu');


INSERT INTO funcionario (nome, cpf, telefone, email, salario, data_admissao, id_unidade, id_endereco)
VALUES
('Ana Silva', '123.456.789-00', '(84) 9999-9999', 'ana.silva@senac.rn.gov.br', 2000.00, '2023-01-01', 2, 1),
('João Santos', '234.567.890-01', '(84) 8888-8888', 'joao.santos@senac.rn.gov.br', 2500.00, '2023-02-01', 3, 2),
('Maria Oliveira', '345.678.901-02', '(84) 7777-7777', 'maria.oliveira@senac.rn.gov.br', 3000.00, '2023-03-01', 4, 3),
('Pedro Souza', '456.789.012-03', '(84) 6666-6666', 'pedro.souza@senac.rn.gov.br', 3500.00, '2023-04-01', 2, 4),
('Camila Costa', '567.890.123-04', '(84) 5555-5555', 'camila.costa@senac.rn.gov.br', 4000.00, '2023-05-01', 3, 5),
('Bruno Fernandes', '678.901.234-05', '(84) 4444-4444', 'bruno.fernandes@senac.rn.gov.br', 4500.00, '2023-06-01', 4, 6),
('Fernanda Rodrigues', '789.012.345-06', '(84) 3333-3333', 'fernanda.rodrigues@senac.rn.gov.br', 5000.00, '2023-07-01', 2, 7),
('Ricardo Silva', '890.123.456-07', '(84) 2222-2222', 'ricardo.silva@senac.rn.gov.br', 5500.00, '2023-08-01', 3, 8),
('Gabriela Oliveira', '901.234.567-08', '(84) 1111-1111', 'gabriela.oliveira@senac.rn.gov.br', 6000.00, '2023-09-01', 4, 9),
('Eduardo Santos', '012.345.678-09', '(84) 0000-0000', 'eduardo.santos@senac.rn.gov.br', 6500.00, '2023-10-01', 2, 10);




ALTER TABLE funcionario ALTER COLUMN cpf char(14)not null;
select * from endereco
select * from funcionario
select * from senac_unidade

ALTER TABLE funcionario ADD  id_endereco int,
FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco);

ALTER TABLE funcionario DROP COLUMN id_endereco;
ALTER TABLE senac_unidade -- Add a new column 'NewColumnName' to table 'TableName' in schema 'SchemaName'
