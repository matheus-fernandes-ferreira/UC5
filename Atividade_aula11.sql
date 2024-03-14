use sistema_biblioteca;
--QUESTAO 1
select count (*) total_livros 
from LIVRO_BIBLIOTECA
where cnpj = '12345678000123'

--QUESTAO 2
select * from BIBLIOTECARIO

--QUESTAO 3
select titulo, autor from LIVRO
where numero_registro = 10

--QUESTAO 4
select * from EVENTO
where tipo = 'workshop' and custo > 150.00;

--QUESTAO 5
select BIBLIOTECA.cnpj
from BIBLIOTECA
join TECNOLOGIA on BIBLIOTECA.cnpj = '23456789000134';

--QUESTAO 6
select nome from ATENDENTE

--QUESTAO 7
select * from PERIODICO
where ano_publicacao = 2023

--QUESTAO 8

select *
from LIVRO
join SOCIOLOGIA on LIVRO.numero_registro = SOCIOLOGIA.numero_registro 

--questao 9
select nome, matricula from EDUCADOR

--QUESTAO 10
select * from PERIODICO where titulo like 'c%'

--QUESTAO 11
--11.Encontre todos os eventos do tipo 'Palestra' que ocorreram antes de 2022.