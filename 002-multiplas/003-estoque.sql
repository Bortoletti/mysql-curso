use estoque;

create table estoque(
    id_estoque int8 auto_increment primary key,
    id_empresa int8,
    nome varchar(90),
    unidade varchar(30),
    fl_ativo char(1) default 'S'
);

alter table estoque 
add constraint estoque_fk01
foreign key( id_empresa )
references geral.empresa( id_empresa );

insert into estoque( id_empresa, nome, unidade ) values( 1, 'ESTOQUE 1', 'kg');
insert into estoque( id_empresa, nome, unidade ) values( 2, 'ESTOQUE 2', 'kg');
insert into estoque( id_empresa, nome, unidade ) values( 3, 'ESTOQUE 3', 'kg');
insert into estoque( id_empresa, nome, unidade ) values( 4, 'ESTOQUE 1', 'kg');

show tables;

select e.nome as estoque, ee.nome as empresa
from estoque e
  join geral.empresa ee on( ee.id_empresa = e.id_empresa );


show databases;
