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


-- use this to create ex3.db as well
