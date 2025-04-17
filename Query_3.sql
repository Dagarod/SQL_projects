create table products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references USER(id)
);

rename table products to product;

insert into product(name, created_by, marca)
values
	('iPad',1,'Apple'),
    ('iPhone',1,'Apple'),
    ('Watch',2,'Apple'),
    ('MacBook',1,'Apple'),
    ('iMac',3,'Apple'),
    ('iPad Mini',2,'Apple');

SELECT * FROM product;

SELECT u.id, u.email, p.name FROM user u LEFT JOIN product p on u.id = p.created_by;

SELECT u.id, u.email, p.name FROM user u right JOIN product p on u.id = p.created_by;

SELECT u.id, u.email, p.name FROM user u inner JOIN product p on u.id = p.created_by;

SELECT u.id, u.name, p.id, p.name from user u cross join product p;

select count(id), marca from product group by marca;

select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

select count(p.id), u.name from product p left join user u 
on u.id = p.created_by group by p.created_by
having count(p.id) >= 2;

DROP table animales;
drop table product;
drop table user;
