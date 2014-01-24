SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet where age > 10;

SELECT * from person where age < (select age from person where id = 2);

select * from person where id < 10 and first_name like '%d';
