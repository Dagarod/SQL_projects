CREATE TABLE user(
	id int NOT NULL auto_increment,
    name varchar(50) not null,
	edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ('Óscar',25,'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla',15,'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolás',35,'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito',7,'Chanchito@gmail.com');

SELECT * FROM user;
SELECT * FROM user LIMIT 1;
SELECT * FROM user where edad > 15;
SELECT * FROM USER where edad >= 15;
SELECT * FROM USER where edad >= 15 and email = 'nico@gmail.com';
SELECT * FROM USER where edad > 20 or email = 'layla@gmail.com';
SELECT * FROM USER where email != 'layla@gmail.com';
SELECT * FROM USER where edad between 15 and 30;
SELECT * FROM USER where email like '%gmail%';
SELECT * FROM USER where email like '%gmail';
SELECT * FROM USER where email like 'oscar%';

SELECT * FROM USER order by edad asc;
SELECT * FROM USER order by edad desc;
SELECT max(edad) as mayor FROM USER;
SELECT min(edad) as menor FROM USER;

SELECT id, name FROM USER;
SELECT id, name as 'NOMBRE' FROM USER;