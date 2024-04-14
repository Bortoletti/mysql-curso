
CREATE USER 'sistema'@'localhost' IDENTIFIED BY 'Sistema!2024#01';

-- GERAL

CREATE DATABASE geral;

grant all privileges on geral.* to 'sistema'@'localhost';

flush privileges;

show databases;

-- ESTOQUE

CREATE DATABASE estoque;

grant all privileges on estoque.* to 'sistema'@'localhost';

flush privileges;

show databases;

-- COMPRAS

CREATE DATABASE compras;

grant all privileges on compras.* to 'sistema'@'localhost';

flush privileges;

show databases;

