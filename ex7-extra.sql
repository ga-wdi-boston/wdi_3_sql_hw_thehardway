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
  model TEXT,
  make TEXT,
  condition TEXT,
  year INTEGER
);
CREATE TABLE person_car (
  person_id INTEGER,
  car_id INTEGER
);

INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, "Zed", "Shaw", 37);
INSERT INTO person VALUES (1, "Prescott", "Murphy", 31);
INSERT INTO person VALUES (2, "Alex", "Grant", 25);
INSERT INTO person VALUES (3, "David", "Fisher", 31);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, "Fluffy", "Unicorn", 1000, 0);
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);
INSERT INTO pet VALUES (2, "Gus", "Guinea Pig", 7, 1);
INSERT INTO pet VALUES (3, "Henry", "Dog", 7, 0);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (1, 2);
INSERT INTO person_pet VALUES (1, 3);

DELETE FROM pet WHERE dead = 1;
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);
INSERT INTO pet VALUES (2, "Gus", "Guinea Pig", 7, 1);
