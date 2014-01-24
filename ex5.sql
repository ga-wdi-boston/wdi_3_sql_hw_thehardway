SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > 28;

SELECT * FROM person WHERE age < 28;

SELECT * FROM person WHERE age > 5 AND first_name = "Annaface";

SELECT * FROM person WHERE age > 5 AND first_name = "Annaface" OR first_name = "Zed";
