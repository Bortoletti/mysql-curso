
use erp;

create table empresa(
    id_empresa int8 auto_increment primary key,
    nome varchar(90),
    fl_ativo char(1) default 'S'
);

insert into empresa( nome ) values( 'EMPRESA 1');
insert into empresa( nome ) values( 'EMPRESA 2');
insert into empresa( nome ) values( 'EMPRESA 3');

select * from empresa;



-- FORNECEDOR

create table fornecedor(
    id_fornecedor int8 auto_increment primary key,
    nome varchar(90),
    fl_ativo char(1) default 'S'
);

insert into fornecedor( nome ) values( 'FORNECEDOR 1');
insert into fornecedor( nome ) values( 'FORNECEDOR 2');
insert into fornecedor( nome ) values( 'FORNECEDOR 3');

select * from fornecedor;

show tables;
