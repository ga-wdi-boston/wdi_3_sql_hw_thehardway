CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Janet", "Rollins", 99);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (1, "Rex", "Alligator", 10, 1);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);


UPDATE person SET first_name = "Hilarious Guy"
    WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
    WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = "Zed"
	WHERE id = 0

UPDATE pet SET name = "Rhonda"
	WHERE id = 0;