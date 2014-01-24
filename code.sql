DROP TABLE IF EXISTS person;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

ALTER TABLE person ADD COLUMN height INTEGER;
ALTER TABLE person ADD COLUMN weight INTEGER;



DROP TABLE IF EXISTS pet;

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

DROP TABLE IF EXISTS person_pet;

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);


