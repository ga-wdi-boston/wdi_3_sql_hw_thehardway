-- Exercise 7 Extra Credit

DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;

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

/* CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    pet_id INTEGER
);

-- Extra Credit 2
You can put more than one row in person_pet. For someone with multiple pets,
you could create an id column to differentiate the different records.

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

*/

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

-- Extra Credit 1

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Laure", "Fischer", 24);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (2, "Boomer", "Labradoodle", 11, 0);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

-- Extra Credit 1
INSERT INTO person_pet VALUES (1, 2);

-- Extra Credit 2
-- This table would seem to allow for multiple people to own the same pet,
-- which would make sense in the case of a family pet.

-- Extra Credit 3
-- In this case, the third relational table would probably work better to pair
-- pets and people, since you would not have to repeat an entire record for a
-- person for each pet they own. You would still have to repeat their id for each
-- pet, but this would duplicate less information.

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

-- Extra Credit 1
SELECT * FROM pet WHERE age > 10;

-- Extra Credit 2
SELECT * FROM person WHERE age < 24;
SELECT * FROM person WHERE age > 24;

-- Extra Credit 3
SELECT * FROM person WHERE age > 24 AND first_name = "Zed";

-- Extra Credit 4
SELECT * FROM person WHERE age > 24 AND first_name = "Zed" OR last_name = "Shaw";

SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.first_name = "Zed";

-- Extra Credit 1
SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.first_name = "Laure";
-- Extra Credit 2
SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.id = 1;

/* make sure there's dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;

-- Extra Credit
DELETE FROM pet WHERE name = "Boomer";

INSERT INTO pet VALUES (4, "Tyson", "Lab", 12, 1);

-- Extra Credit Exercise 12
-- ALTER TABLE person ADD COLUMN height INTEGER;
-- ALTER TABLE person ADD COLUMN weight INTEGER;


