/* 
Crie uma função que some todos os clientes cadastrados em uma loja durante um dia.
*/

create database loja;
use loja;

create table clientes(
nome varchar (30),
registro int not null auto_increment,
dtCadastro date,
primary key (registro));

select * from clientes;

insert into clientes
(nome, dtCadastro)
values
('Pedro', curdate()),
('Ana', curdate()),
('Julio', curdate()),
('Paula', curdate()),
('Lucas', curdate());

select * from clientes;

delimiter $$

CREATE FUNCTION fn_soma (registro int, dtCadastro date) RETURNS INT
BEGIN
	
declare Soma int;	
	SELECT count(registro) from clientes where day(dtCadastro)=day(curdate())
    into Soma;
	RETURN Soma;
        
END $$

delimiter ; 

select fn_soma(registro, dtCadastro) as clientes_cad, day(dtCadastro) as dia_cad from clientes; 