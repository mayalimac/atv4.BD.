/* 
Você deve criar uma tabela para executar uma trigger que relacione algum comando, 
como: insert, select, delete ou update.
*/

create database loja;

create table produto (
idProduto int not null auto_increment,
Nome_produto varchar(45) null,
Preco_Normal decimal(10,2) null,
Preco_Desconto decimal(10,2) null,
primary key(idProduto));

create trigger tr_desconto before insert
on produto
for each row
set new.Preco_Desconto = (new.Preco_Normal * 0.9);

insert into produto (Nome_produto, Preco_Normal)
values ('monito', 1560.00), ('tablet', 780.00);

select * from produto;