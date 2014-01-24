CREATE TABLE people (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE cars (
	id INTEGER PRIMARY KEY,
	make TEXT,
	model TEXT,
	year INTEGER
);

CREATE TABLE people_cars (
	people_id INTEGER,
	cars_id INTEGER
);

