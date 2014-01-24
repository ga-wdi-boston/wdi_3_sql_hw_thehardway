SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

-- Extra Credit 1
SELECT * FROM pet WHERE age > 10;

-- Extra Credit 2
SELECT * FROM person WHERE age < 24;
SELECT * FROM person WHERE age > 24;

-- Extra Credit 3
SELECT * FROM person WHERE age > 24 AND first_name = "Zed";

-- Extra Credit 4
SELECT * FROM person WHERE age > 24 AND first_name = "Zed" OR last_name = "Shaw";

