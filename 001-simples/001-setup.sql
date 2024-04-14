--
-- conectar como usuario root
-- sudo su
-- mysql
--
-- executar o script
-- \. 001-setup.sql

--==================================================================

CREATE USER 'sistema'@'localhost' IDENTIFIED BY 'Sistema!2024#01';


CREATE DATABASE erp;

grant all privileges on erp.* to 'sistema'@'localhost';

flush privileges;

show databases;

