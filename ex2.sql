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

-- Extra Credit 1

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    pet_id Integer
);

-- Extra Credit 2
-- You can put more than one row in person_pet. For someone with multiple pets,
-- you could create an id column to differentiate the different records.

-- Extra Credit 3

CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    year INTEGER,
    make TEXT,
    color TEXT,
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);

