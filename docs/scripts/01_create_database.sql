CREATE SCHEMA `examen2` ;
--CREATE USER 'examen2'@'127.0.0.1' IDENTIFIED BY 'repaso';
CREATE USER 'examen2'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'repaso';
GRANT ALL ON examen2.* TO 'examen2'@'127.0.0.1';
