/* This should fail because 0 is already taken. */
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


INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

/* We can force it by doing an INSERT OR REPLACE. */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

/* And shorthand for that is just REPLACE. */
REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Shaw', 37);

/* Now you can see I'm back. */
SELECT * FROM person;

INSERT OR REPLACE  pet (breed 'unicorn')
	VALUES(breed 'parrot')