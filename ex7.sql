DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

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
);

CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    make TEXT,
    model TEXT,
    year INTEGER
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);

DELETE FROM person;
DELETE FROM pet;
DELETE FROM person_pet;
DELETE FROM car;
DELETE FROM person_car;

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (first_name, last_name, age)
	VALUES ("Mike", "Stone", 37);

INSERT INTO pet (name, breed, age, dead)
	VALUES ("Chester", "Dog", 13, 1);

INSERT INTO pet (name, breed, age, dead)
	VALUES ("Paul", "Cat", 13, 1);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 0);

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT first_name FROM person WHERE age > 27;

SELECT first_name FROM person WHERE age < 27;

SELECT * FROM pet WHERE age > 5 AND breed = 'Dog';

SELECT * FROM person WHERE age > 27 OR first_name = 'Mike' OR first_name = 'Zed';

INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);

SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.id = 1;


/* make sure there's dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (3, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;
