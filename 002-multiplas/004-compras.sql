use compras;

create table ordem(
    id_ordem int8 auto_increment primary key,
    id_empresa int8 not null,
    id_estoque int8 not null,
    complemento varchar(400),
    quantidade int8,
    st_ordem varchar(30) default 'ABERTA'
);

alter table ordem 
add constraint ordem_fk01
foreign key( id_empresa )
references geral.empresa( id_empresa );

alter table ordem 
add constraint ordem_fk02
foreign key id_estoque 
references estoque.estoque( id_estoque );

insert into ordem( id_empresa, id_estoque, complemento, quantidade ) values(1,1,'COMPRA PARA AVALIACAO', 10 );
insert into ordem( id_empresa, id_estoque, complemento, quantidade ) values(2,2,'COMPRA PARA AVALIACAO', 10 );
insert into ordem( id_empresa, id_estoque, complemento, quantidade ) values(3,2,'COMPRA PARA AVALIACAO', 10 );

select e.nome as estoque
, o.*
from estoque.estoque e 
  join compras.ordem o on( o.id_estoque = e.id_estoque );


show tables;

show databases;



