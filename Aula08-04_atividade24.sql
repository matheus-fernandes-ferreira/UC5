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
