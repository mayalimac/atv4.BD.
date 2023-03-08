/* 
Uma empresa precisa criar um relatório que faça um levantamento diário da quantidade 
de produtos comprados no dia. Para isso, crie um procedure que será usado para agilizar todos os processos
*/

create database loja;
use loja;

create table produtos(
nome varchar (30),
registro int not null auto_increment,
qtVendida int default '0', 
dtVenda date,
primary key (registro));

insert into produtos
(nome, qtVendida, dtVenda)
values
('Papel', '55', '2022-09-19'),
('Lápis', '77', '2022-09-19'),
('Borracha', '13', '2022-09-19'),
('Caneta', '95', '2022-09-19'),
('Caderno', '80', '2022-09-20');

DELIMITER $$

create procedure sp_soma()
begin
	SELECT nome, sum(qtVendida) as Vendas_dia , dtVenda 
	from produtos
	group by dtVenda, nome;
end $$

DELIMITER ;

call sp_soma; 