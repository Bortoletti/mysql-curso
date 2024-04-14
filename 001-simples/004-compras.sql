use erp;
drop table if exists ordem;

create table ordem(
    id_ordem int8 auto_increment primary key,
    id_empresa int8 not null,
    id_estoque int8 not null,
    id_fornecedor int8 not null,
    complemento varchar(400),
    quantidade int8,
    st_ordem varchar(30) default 'ABERTA'
);

alter table ordem 
add constraint ordem_fk01
foreign key( id_empresa )
references empresa( id_empresa );

alter table ordem 
add constraint ordem_fk02
foreign key id_estoque 
references erp.estoque( id_estoque );

alter table ordem
add contraint ordem_fk03
  foreign key( id_fornecedor )
  references fornecedor ( id_fornecedor )

insert into ordem( id_empresa, id_estoque, id_fornecedor, complemento, quantidade ) values(1,1,1,'COMPRA PARA AVALIACAO', 10 );
insert into ordem( id_empresa, id_estoque, id_fornecedor, complemento, quantidade ) values(2,2,1,'COMPRA PARA AVALIACAO', 10 );
insert into ordem( id_empresa, id_estoque, id_fornecedor, complemento, quantidade ) values(3,2,1,'COMPRA PARA AVALIACAO', 10 );

select e.nome as estoque
, f.nome as fornecedor
, o.*
from estoque.estoque e 
  join ordem o on( o.id_estoque = e.id_estoque );
  join fornecedor f on( f.id_fornecedor = o.id_fornecedor )


show tables;

show databases;



