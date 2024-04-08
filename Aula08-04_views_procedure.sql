USE sistema_biblioteca

--aula 08/04

--===========VIEWS===========

select sum (custo) as total_evento from evento;

create view VwCusto_Evento_Palestra
as
select sum (custo) as total_evento from evento
where tipo = 'palestra';

select * from VwCusto_Evento_Palestra;

create view Vw_custo_medio_eventos
as
select AVG (custo) as custo_medio_evento
from EVENTO;

select * from Vw_custo_medio_eventos;


--===========PROCEDIMENTO===========
--procedimento para listar todos os funcionario
create procedure sp_listar_funcionarios
as
begin
	select * from FUNCIONARIO
end

exec sp_listar_funcionarios


--procedimento para buscar os livro a partir de um titulo 
create procedure buscar_livro
	@titulo nvarchar(100)
as
begin
	select *from LIVRO
	where titulo like @titulo
end;

exec buscar_livro @titulo = '%python%'

--procedimento para buscar os livro a partir de um titulo 
create procedure sp_buscar_livro_concat
	@titulo nvarchar(100)
as
begin
	select * from LIVRO
	where titulo like '%' + @titulo + '%'
end;

exec sp_buscar_livro_concat @titulo	= 'Saúde'


--procedimento para buscar todos os livros de uma determinada biblioteca
create procedure sp_buscar_livro_biblioteca
	@cnpj nvarchar(14)
as
begin
	select * from LIVRO
	join LIVRO_BIBLIOTECA on LIVRO_BIBLIOTECA.numero_registro = LIVRO.numero_registro
	where cnpj like @cnpj
end

exec sp_buscar_livro_biblioteca @cnpj = '78901234000189';

SELECT * FROM BIBLIOTECA