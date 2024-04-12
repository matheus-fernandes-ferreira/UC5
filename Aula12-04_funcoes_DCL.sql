use sistema_biblioteca

create function fn_total_func()
returns int
as
begin
	declare @total_funcionario int;
	select @total_funcionario = count(*) from FUNCIONARIO
	return @total_funcionario
end

select dbo.fn_total_func() as total_funcionarios



create function fn_eventos_palestra(@tipo nvarchar(30))
returns int
as 
begin
	declare @total_eventos int;
	select @total_eventos = count (*) from EVENTO
	where tipo = @tipo
	return @total_eventos
end

select dbo.fn_eventos_palestra ('palestra')


create function fn_custo_evento(@tipo nvarchar(30)
returns decimal(6,2)
as
begin
	declare @custo_medio decimal(6,2)
	select @custo_medio = avg(custo) from EVENTO
	where tipo = tipo
	return @custo_medio
end

create login fulano with password = 'Mat331304'
CREATE USER fulano for login fulano 
grant select on funcionario to fulano
revoke select on funcionario to fulano