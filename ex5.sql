SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT first_name FROM person WHERE age > 27;

SELECT first_name FROM person WHERE age < 27;

SELECT * FROM pet WHERE age > 5 AND breed = 'Dog';

SELECT * FROM person WHERE age > 27 OR first_name = 'Mike' OR first_name = 'Zed';
