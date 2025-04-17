	create database holamundo;
	show databases;
	use holamundo;
	CREATE TABLE animales(
		id int,
		tipo varchar(255),
		estado varchar(255),
		PRIMARY KEY (id)
	);

INSERT INTO animales (tipo, estado) VALUES ('Chanchito','Feliz');
INSERT INTO animales (tipo, estado) VALUES ('Dragón','Feliz');
INSERT INTO animales (tipo, estado) VALUES ('Felipe','triste');

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

SELECT * FROM animales where id = 1;
select * FROM animales where estado = 'feliz' and tipo = 'Chanchito';

UPDATE animales SET estado = 'feliz' WHERE id = 3;

DELETE FROM animales WHERE id = 3;

UPDATE animales SET estado = 'triste' WHERE tipo = 'dragon';