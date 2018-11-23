create table employee_table(
		id int auto_increment primary key,
        name varchar(50),
        surname varchar(50) not null,
        age int(2)
);
-- varchar - String
-- auto_increment -> zwiększenie o jedno id
-- name varchar(50) - ograniczenie Stringu do 50 znakówith

-- dodawanie danych

insert into employee_table(name, surname, age) values
("Jan", "Kowalski", 28),
("Magda", "Konopka", 30),
("Piotr", "Ablamowicz", 30);

-- pobieranie danych

select * from employee_table;

select name from employee_table;

select age from employee_table;

-- filtrowanie

select * from employee_table where age > 28;
select * from employee_table where age > 31;
select * from employee_table where age > 12;

select * from employee_table where age > 12 and age < 30;
select * from employee_table where age between 28 and 30;

select * from employee_table where surname like '%cz';
-- zawierajace dana fraze w podanym parametrze (surname)

-- distinct - usuwa powtórzenia z wynikówith
select distinct surname from employee_table;

-- zmiana istniejących rekordów; przy braku dodaniu WHERE -> aktualizacja wszystkich rekordów
 update employee_table set name ="Krzysiek" where id=2;
 select * from employee_table;
 
 -- usuwanie danych
 delete from employee_table where name="Mariola"; 
 select * from employee_table;

select name, age/2 as half_age from employee_table;

-- funkcje agregujące

select max(age) from employee_table;
select avg(age) from employee_table;

select * from employee_table;

select * from employee_table order by time desc;
select * from employee_table order by time asc;






