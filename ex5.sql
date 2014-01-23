SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";


SELECT name, age FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > 28;
SELECT * FROM person WHERE age < 28;


SELECT name, age FROM pet WHERE age > 10 and dead = 0;
