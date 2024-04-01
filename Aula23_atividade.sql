use sistema_biblioteca

--1. Retornar todos os livros de sociologia.
select * from SOCIOLOGIA

--2. Listar os nomes dos funcionários que são bibliotecários.
select nome from BIBLIOTECARIO

--3. Exibir os títulos dos livros publicados antes de 2000.
select titulo
from LIVRO 
where ano_publicacao > 2000;

--4. Mostrar o número total de livros em cada biblioteca.
select * from BIBLIOTECA

INSERT INTO LIVRO_BIBLIOTECA 
VALUES 
('01234567000112', 1), ('01234567000112', 2), ('01234567000112', 3), 
('01234567000112', 4), ('01234567000112', 5), ('12345678000123', 6), 
('12345678000123', 7), ('12345678000123', 8), ('12345678000123', 9), 
('12345678000123', 10), ('23456789000134', 11), ('23456789000134', 12), 
('23456789000134', 13), ('23456789000134', 14), ('23456789000134', 15), 
('34567890000145', 16), ('34567890000145', 17), ('34567890000145', 18), 
('34567890000145', 19), ('34567890000145', 20), ('45678901000156', 21), 
('45678901000156', 22), ('45678901000156', 23), ('45678901000156', 24), 
('45678901000156', 25), ('56789012000167', 26), ('56789012000167', 27), 
('56789012000167', 28), ('56789012000167', 29), ('56789012000167', 30), 
('67890123000178', 31), ('67890123000178', 32), ('67890123000178', 33), 
('67890123000178', 34), ('67890123000178', 35), ('78901234000189', 36), 
('78901234000189', 37), ('78901234000189', 38), ('78901234000189', 39), 
('78901234000189', 40), ('89012345000190', 41), ('89012345000190', 42), 
('89012345000190', 43), ('89012345000190', 44), ('89012345000190', 45), 
('90123456000101', 46), ('90123456000101', 47), ('90123456000101', 48), 
('90123456000101', 49), ('90123456000101', 50);

SELECT cnpj, COUNT(*) AS total_livros
from LIVRO_BIBLIOTECA
group by cnpj

--5. Listar os eventos do tipo 'Workshop' que ocorreram após 2020.
SELECT *
FROM EVENTO
where tipo = 'workshop' and data > '2020';

--6. Exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de 2023.
create table USUARIO(
	id_usuario nvarchar(5)  primary key,
	nome nvarchar(50)
);

create table emprestimo(
	numero_registro int
	foreign key (numero_registro) references LIVRO (numero_registro),
	data_emprestimo date not null,
	duracao_emprestimo int,
	data_devolucao date
);




--7. Retornar os títulos dos livros de tecnologia que têm 'Python' no título.
SELECT LIVRO.titulo
from LIVRO
join TECNOLOGIA on TECNOLOGIA.numero_registro = livro.numero_registro
WHERE livro.titulo like '%Python%';

--8. Listar os títulos dos periódicos disponíveis na biblioteca com CNPJ '12345678000123'.
SELECT PERIODICO.titulo
FROM PERIODICO
JOIN PERIODICO_BIBLIOTECA ON PERIODICO_BIBLIOTECA.numero_registro = PERIODICO.numero_registro
WHERE cnpj = '12345678000123';

--9. Mostrar os nomes dos funcionários que não são técnicos de TI.
SELECT FUNCIONARIO.nome
FROM FUNCIONARIO
WHERE matricula  NOT LIKE '%t%';

--10.Exibir o título e o autor dos livros emprestados pelo usuário com ID 'U0001'.




--11.Listar todas as palestras que custaram mais de R$ 100,00.
select * 
from PALESTRA
join EVENTO ON EVENTO.id_evento = PALESTRA.id_evento
where custo > 100.00;

--12.Retornar os títulos dos livros de ciência que foram publicados após 2010.
select LIVRO.titulo
FROM LIVRO
JOIN CIENCIA ON CIENCIA.numero_registro = LIVRO.numero_registro
WHERE LIVRO.ano_publicacao > '2010';

--13.Exibir os nomes dos atendentes que têm 'Maria' no nome.
SELECT ATENDENTE.nome
FROM ATENDENTE
WHERE ATENDENTE.nome LIKE '%Maria%';

--14.Mostrar os títulos dos livros que foram emprestados mais de 5 vezes.

--15.Listar os nomes dos usuários que emprestaram livros de tecnologia.

--16.Exibir os eventos que ocorreram na biblioteca '67890123000178' em 2022.


--17.Retornar os títulos dos periódicos que têm 'Saúde' no título.
select PERIODICO.titulo
from PERIODICO
where PERIODICO.titulo like '%Saúde%';

--18.Listar os nomes dos estagiários que começam com a letra 'L'.
select ESTAGIARIO.nome
from ESTAGIARIO
where ESTAGIARIO.nome like 'L%'

--19.Mostrar os títulos dos livros de sociologia que foram publicados nos anos 90.
select LIVRO.titulo
from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro
where LIVRO.ano_publicacao >= '1990' and LIVRO.ano_publicacao < '2000';

--0.Exibir os títulos dos livros e os nomes dos autores dos livros emprestados em fevereiro de 2023.
