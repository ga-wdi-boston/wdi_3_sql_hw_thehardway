DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);
CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

-- CREATE TABLE person (
--     id INTEGER PRIMARY KEY,
--     first_name TEXT,
--     last_name TEXT,
--     age INTEGER
-- );

-- CREATE TABLE pet (
--     id INTEGER PRIMARY KEY,
--     name TEXT,
--     breed TEXT,
--     age INTEGER,
--     dead INTEGER,
-- );

-- CREATE TABLE person_pet (
--     person_id INTEGER,
--     pet_id INTEGER
-- );

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Annaface", "Tsykalova", 28);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet
		VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (2, "Dino", "Brontosaurus", 55, 0);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (3, "Donnie", "Nematode", 8, 1);

INSERT INTO person_pet (person_id, pet_id)
		VALUES (0, 0);

INSERT INTO person_pet (person_id, pet_id)
		VALUES (0, 1);

INSERT INTO person_pet (person_id, pet_id)
		VALUES (1, 2);

INSERT INTO person_pet (person_id, pet_id)
		VALUES (1, 3);

-- SELECT * FROM person;

-- SELECT name, age FROM pet;

-- SELECT name, age FROM pet WHERE dead = 1;

-- SELECT * FROM person WHERE first_name != "Zed";

-- SELECT * FROM pet WHERE age > 10;

-- SELECT * FROM person WHERE age > 28;

-- SELECT * FROM person WHERE age < 28;

-- SELECT * FROM person WHERE age > 5 AND first_name = "Annaface";

-- SELECT * FROM person WHERE age > 5 AND first_name = "Annaface" OR first_name = "Zed";

-- SELECT person.first_name, pet.id, pet.name, pet.age, pet.dead
--     FROM pet, person_pet, person
--     WHERE
--     pet.id = person_pet.pet_id AND
--     person_pet.person_id = person.id AND
--     person.first_name = "Annaface";

-- -- select all people who have pets

-- SELECT * FROM person_pet, person, pet
--    WHERE
--    pet.id = person_pet.pet_id AND
--    person.id = person_pet.person_id;


-- -- /* make sure there's dead pets */
-- -- SELECT name, age FROM pet WHERE dead = 1;

-- -- /* aww poor robot */
-- -- DELETE FROM pet WHERE dead = 1;

-- --  make sure the robot is gone
-- -- SELECT * FROM pet;

-- -- /* let's resurrect the robot */
-- -- INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

-- -- /* the robot LIVES! */
-- -- SELECT * FROM pet;


-- -- -- delete all people who have dead pets

-- -- DELETE FROM person WHERE person.id IN (
-- -- 	SELECT person.id FROM pet, person, person_pet
-- -- 			WHERE
-- -- 			pet.dead = 1 AND
-- -- 			pet.id = person_pet.pet_id AND
-- -- 			person.id = person_pet.person_id
-- -- );

-- -- -- it's gone from here
-- -- SELECT * FROM person;

-- -- -- haven't deleted from here yet though
-- -- SELECT * FROM person_pet;




-- -- SELECT name, dead FROM pet;

-- -- -- delete all dead pets from person_pet

-- -- DELETE FROM person_pet WHERE person_pet.person_id IN (
-- -- 	SELECT person_pet.person_id FROM pet, person, person_pet
-- -- 		WHERE pet.dead = 1 AND
-- -- 		person_pet.person_id = person.id
-- -- );

-- -- SELECT * FROM person_pet;


-- ALTER TABLE person ADD COLUMN height INTEGER;
-- ALTER TABLE person ADD COLUMN weight INTEGER;





SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;
