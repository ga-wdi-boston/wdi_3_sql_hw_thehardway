sqlite> .schema

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
    person_id INTEGER,
    car_id INTEGER,
);


CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER,
);

#to get rid of person-pet,
#you could just delete person_pet and add pet_id INTEGER to the person table and person_id to
#to the pet table. Having the relational table means you would only have to enter that
#information in one table, rather than two.

#crazy cat lady could be listed on 50 times in the person column with the unique ids for each of her cats
#on its own row

