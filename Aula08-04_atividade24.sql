--Atividade 24
use sistema_biblioteca

--1. Procedure para retornar todos os livros de sociologia.
create procedure sp_livro_sociologia
as
begin
	select * from LIVRO
	JOIN SOCIOLOGIA ON SOCIOLOGIA.numero_registro = LIVRO.numero_registro
end;

exec sp_livro_sociologia;

--2. Procedure para listar os nomes dos funcionários que são bibliotecários.
create procedure sp_funcionarios_bibliotecario
as
begin
	select FUNCIONARIO.nome 
	from FUNCIONARIO
	JOIN BIBLIOTECARIO ON BIBLIOTECARIO.matricula = FUNCIONARIO.matricula
end

exec sp_funcionarios_bibliotecario

--3. Procedure para exibir os títulos dos livros publicados antes de 2000.
create procedure sp_livro_publicado_antes
	@ano_publicacao nvarchar(30)
as
begin
	select LIVRO.titulo
	from LIVRO
	where LIVRO.ano_publicacao < @ano_publicacao
end

exec sp_livro_publicado_antes @ano_publicacao =  '2020'

--4. Procedure para mostrar o número total de livros em cada biblioteca.
create procedure sp_total_livros_biblioteca
	--@cnpj nvarchar(14)
as
begin
	select  cnpj, COUNT(numero_registro) as total_livros_biblioteca
	from LIVRO_BIBLIOTECA
	group by cnpj
end

--5. Procedure para listar os eventos do tipo 'Workshop' que ocorreram após 2020.
create procedure sp_evento_workshop
	@data DATE
as
begin
	select * from EVENTO
	where EVENTO.tipo = 'workshop' and EVENTO.data > @data
end

exec sp_evento_workshop @data = '2020';

--6. Procedure para exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de 2023.


--7. Procedure para retornar os títulos dos livros de tecnologia que têm 'Python' no título.
create procedure sp_livros_python
	@titulo nvarchar(100)
as
begin
	select * from LIVRO
	where LIVRO.titulo like '%' + @titulo + '%'
end

exec sp_livros_python @titulo = 'python';

--8. Procedure para listar os títulos dos periódicos disponíveis na biblioteca com CNPJ '12345678000123'.
create procedure sp_periodicos_biblioteca
as
begin
	select PERIODICO.titulo from PERIODICO
	JOIN PERIODICO_BIBLIOTECA ON PERIODICO_BIBLIOTECA.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
	where PERIODICO_BIBLIOTECA.cnpj = '12345678000123'
end
exec sp_periodicos_biblioteca 

--9. Procedure para mostrar os nomes dos funcionários que não são técnicos de TI.
create procedure sp_funcionarios_dif_ti
as
begin
	select * from FUNCIONARIO
	where FUNCIONARIO.matricula not like 't%';
end

exec sp_funcionarios_dif_ti;

--Procedure para exibir o título e o autor dos livros emprestados pelo usuário com ID 'U0001'.--11.Procedure para listar todas as palestras que custaram mais de R$ 100,00.
create procedure sp_palestras_custo
	@custo decimal (6,2)
as
begin
	select * from EVENTO
	where EVENTO.tipo = 'palestra' and EVENTO.custo > @custo
end
exec sp_palestras_custo @custo = '100';

--12.Procedure para retornar os títulos dos livros de ciência que foram publicados após  2010.
create procedure sp_livros_ciencia
	@ano_publicacao nvarchar(30)
as
BEGIN
	select LIVRO.titulo from LIVRO
	JOIN CIENCIA ON CIENCIA.numero_registro = LIVRO.numero_registro
	where LIVRO.ano_publicacao > @ano_publicacao
END

exec sp_livros_ciencia @ano_publicacao = '2010';

--13.Procedure para exibir os nomes dos atendentes que têm 'Maria' no nome.
create procedure sp_nome_atendentes
	@nome nvarchar(50)
as
begin
	select FUNCIONARIO.nome from FUNCIONARIO
	join ATENDENTE on ATENDENTE.matricula = FUNCIONARIO.matricula
	where FUNCIONARIO.nome like '%' + @nome + '%'
end
exec sp_nome_atendentes @nome = 'Maria';

--14.Procedure para mostrar os títulos dos livros que foram emprestados mais de 5 vezes.

--15.Procedure para listar os nomes dos usuários que emprestaram livros de tecnologia.

--views
--1. View para listar todos os livros com seus respectivos autores e ano de publicação.
create view Vw_livros
as
select LIVRO.titulo, LIVRO.autor, LIVRO.ano_publicacao
from LIVRO

select * from Vw_livros;

--2. View para exibir os detalhes dos funcionários que são gerentes.
create view Vw_funcionarios_gerentes
as
select FUNCIONARIO.* from FUNCIONARIO
join GERENTE on GERENTE.matricula = FUNCIONARIO.matricula

select * from Vw_funcionarios_gerentes;

--3. View para mostrar todos os eventos organizados por data.
create view Vw_eventos_ordenados
as
select EVENTO.* from EVENTO

select * from Vw_eventos_ordenados

--4. View para listar os livros de cada categoria (Tecnologia, Sociologia, Ciência).
create view sp_listar_livros_categoria
as
select LIVRO.* from LIVRO
join TECNOLOGIA on TECNOLOGIA.numero_registro = LIVRO.numero_registro

select * from sp_listar_livros_categoria;


--5. View para exibir os títulos dos periódicos e suas datas de publicação.
create view Vw_titulo_periodicos
as
select PERIODICO.titulo, PERIODICO.ano_publicacao from PERIODICO

select * from Vw_titulo_periodicos