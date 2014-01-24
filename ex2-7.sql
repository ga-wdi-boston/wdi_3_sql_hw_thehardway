-- Refresh the DB
DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;
DROP TABLE car;
DROP TABLE person_car;

-- Create tables
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
    id integer primary key,
    model text,
    make text,
    year text
);

CREATE TABLE person_car (
    person_id integer,
    car_id integer
);

-- Insert into tables
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);

INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person VALUES (1, 'Jordan', 'Morano', 31);

INSERT INTO pet VALUES (2, 'Rosie', 'American Bulldog', 12, 0);

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 2);

INSERT INTO person_pet (person_id, pet_id)
VALUES (0, 0);

INSERT INTO person_pet VALUES (0, 1);


-- Read tables
SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != 'Zed';


--  Extra Credit

SELECT name, age FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > 31;

SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = 'Zed';


SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = 'Jordan';

/* make sure there's dead pets */
SELECT * FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;


