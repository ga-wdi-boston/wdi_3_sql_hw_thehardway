/*Add a dead column to person that's like the one in pet.
Add a phone_number column to person.
Add a salary column to person that is float.
Add a dob column to both person and pet that is a DATETIME.
Add a purchased_on column to person_pet of type DATETIME.
Add a parent to pet column that's an INTEGER and holds the id for this pet's parent.
Update the existing database records with the new column data using UPDATE statements.
Don't forget about the purchased_on column in person_pet relation table to indicate when
that person bought the pet.
Add 4 more people and 5 more pets and assign their ownership and what pet's are parents.
On this last part remember that you get the id of the parent, then set it in the parent column.
Write a query that can find all the names of pets and their owners bought after 2004.
 Key to this is to map the person_pet based on the purchased_on column to the pet and parent.
Write a query that can find the pets that are children of a given pet.
Again look at the pet.parent to do this. It's actually easy so don't over think it.*/

ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent_to_pet INTEGER;

UPDATE pet SET parent_to_pet = 0
    WHERE pet.id = 1 OR pet.id = 0;

UPDATE person SET dead = 0
    WHERE person.id = 0;
UPDATE person SET phone_number = '555-555-5555'
    WHERE person.id = 0;
UPDATE person SET salary = 0.50
    WHERE person.id = 0;
UPDATE person SET DOB = 1977-01-01
    WHERE person.id = 0;
UPDATE person_pet SET purchased_on = 1977-12-01
    WHERE pet.id = 1 OR pet.id = 0;

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (7, "Alice", "W", 20, 0, '444-444-4444', 40.50, 1994-12-25 );

INSERT INTO pet (id, name, breed, age, dead, parent_to_pet)
    VALUES (7, "Fluffy_Fluff", "Unicorn", 42, 0, 7);

INSERT INTO pet (id, name, breed, age, dead, parent_to_pet)
    VALUES (8, "Puppy", "Husky", 1, 0, 7);

INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (7, 7, 1994-12-25);
INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (7, 8, 1994-12-30);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (8, "June", "J", 27, 0, '444-333-4444', 50.50, 1987-12-25);

INSERT INTO pet (id, name, breed, age, dead, parent_to_pet)
    VALUES (9, "Spot", "Mutt", 3, 0, 8);

INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (8, 9, 1990-12-25);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (9, "Archer", "J", 29, 0, '444-222-4444', 50.50, 1985-12-25);

INSERT INTO pet (id, name, breed, age, dead, parent_to_pet)
    VALUES (10, "Spotty", "Mutt", 2, 0, 9);

INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (9, 10, 1991-12-25);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (10, "Jill", "H", 27, 0, '333-222-4444', 100.50, 1987-01-25);

INSERT INTO pet (id, name, breed, age, dead, parent_to_pet)
    VALUES (11, "Baby", "Bunny", 2, 0, 10);

INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (10, 11, 1989-12-25);

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;









