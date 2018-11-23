create table shopping_table(
id int auto_increment primary key,
name varchar(50) not null,
producent varchar(50),
description varchar(200),
price int(4)
);


SELECT * FROM shopping.shopping_table;

insert into shopping_table(name, producent, description, price) values
("Notebook", "Oxford", "96 pages", 25),
("Pencil", "Swan", "3mm", 7),
("Rubber", "Board", "Medium hard", 3),
("Rubber", "Board", "Medium hard", 3),
("Bag", "Big Star", "Sport accessories", 45);

SELECT * FROM shopping.shopping_table;

select * from shopping_table where price > 30;

select * from shopping_table where producent = "Board" and price < 10;

update shopping_table set price = 15 WHERE id = 1;

delete from shopping_table where id = 3;

select * from shopping_table;

select avg(price) from shopping_table;
select sum(price) from shopping_table;
select * from shopping_table;


select round(avg(price)) from shopping_table;
select * from shopping_table;

select * from shopping_table where price = (select max(price) from shopping_table);
select min(price) from shopping_table;

select * from shopping_table where price > (select avg(price) from shopping_table);
select * from shopping_table where price < (select avg(price) from shopping_table);

select id, name, price, (price > (select avg(price) from shopping_table)) as if_more_expensive_than_average from shopping_table;



