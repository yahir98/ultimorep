CREATE SCHEMA `examen2` ;
CREATE USER 'examen2'@'127.0.0.1' IDENTIFIED BY 'repaso';
GRANT ALL ON examen2.* TO 'examen2'@'127.0.0.1';
