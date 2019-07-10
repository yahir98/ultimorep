CREATE TABLE `lacteos` (
  `idlacteo` BIGINT(15) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NULL,
  `precio` DECIMAL(15,2) NULL,
  `estado` CHAR(3) NULL,
  PRIMARY KEY (`idlacteo`));
