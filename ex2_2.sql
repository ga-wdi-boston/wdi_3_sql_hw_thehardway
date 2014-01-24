CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    name TEXT,
    brand TEXT,
    model TEXT,
    year INTEGER,
    color TEXT
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);
