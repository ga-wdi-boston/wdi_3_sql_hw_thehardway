CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    dead INTEGER,
    phone TEXT,
    salary INTEGER,
    dob TEXT,
);


CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER,
    dob TEXT,
    parent INTEGER,
);


CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER,
    purchased_on DATETIME
);

INSERT INTO person (id, first_name, last_name, age, dead, phone, salary, dob)
    VALUES (67, 'Amy', 'Dickins', 1, 0, '555-555-5555', 0, '1/1/2013');

INSERT INTO person (id, first_name, last_name, age, dead, phone, salary, dob)
    VALUES (77, 'John', 'Rollins', 12, 0, '556-556-5556', 12, '9/21/2003');

INSERT INTO person (id, first_name, last_name, age, dead, phone, salary, dob)
    VALUES (97, 'Kim', 'Druthers', 40, 0, '123-555-9898', 89000, '4/18/1975');

INSERT INTO person (id, first_name, last_name, age, dead, phone, salary, dob)
    VALUES (67, 'Amy', 'Dickins', 1, 0, '555-555-5555', 0, '8/11/2013');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (100, 'Mittens', 'raccoon', 1, 0, 'today', '97');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (400, 'Grapa', 'eagle', 14, 0, 'last week', '97');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (100, 'Groucho', 'otter', 7, 1, 'years ago', '97');


