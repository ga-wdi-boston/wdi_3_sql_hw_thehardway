CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    make TEXT,
    modle TEXT,
    age INTEGER,
    year_of_make INTEGER
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);
