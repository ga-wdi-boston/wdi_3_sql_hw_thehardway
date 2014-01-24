

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";



SELECT name, age FROM pet WHERE age > 10;
Fluffy|1000
Hamlet|15
Omelet|15

SELECT first_name, age FROM person WHERE age < 34;
No repsonse in SQLite3 because there are no people in my table less than 34.

SELECT first_name, age FROM person WHERE age > 34;
Zed|37
Jennifer|35

SELECT first_name, age FROM person WHERE first_name = "Praggya" AND age > 25;
Praggya|34

SELECT name FROM pet WHERE dead = 0 AND age > 1 OR breed = "cat";
Fluffy
