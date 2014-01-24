
ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary REAL;
ALTER TABLE person ADD COLUMN dob TEXT;
ALTER TABLE pet ADD COLUMN purchased_on TEXT;
ALTER TABLE pet ADD COLUMN parent INTEGER;
ALTER TABLE person_pet ADD COLUMN pet_purchased_on INTEGER;

UPDATE person SET dead = 1 WHERE id=0;
UPDATE person SET phone_number = '49492944' WHERE id=0;
UPDATE person SET salary = 45000 WHERE id=0;
UPDATE person SET dob = '1958, 5, 3' WHERE id=0;

UPDATE pet SET purchased_on = '1958, 3, 2' WHERE id=0;
UPDATE pet SET parent = 4 WHERE id=0;

UPDATE pet SET purchased_on = '1970, 9, 22' WHERE id=1;
UPDATE pet SET parent = 9 WHERE id=1;

UPDATE person_pet SET pet_purchased_on = 1970 WHERE id=1;
UPDATE person_pet SET pet_purchased_on = 1958 WHERE id=0;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (2, "A", "Bed", 14, 0, '48482', 2390, '1934, 4, 24');

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (3, "B", "Dream", 69, 1, '50069-34932', 3939, '1966, 9, 1');

    INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (4, "C", "Nap", 4, 0, '4420085-3093', 1354656, '1994, 12, 31');

    INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (5, "D", "Sleep", 33, 1, '0969230', 748949, '1904, 10, 4');

INSERT INTO pet (id, name, breed, age, dead, purchased_on, parent)
    VALUES (4, "MAO", "Dragon", 1000000, 1, '2005, 19, 2', 2);

INSERT INTO pet (id, name, breed, age, dead, purchased_on, parent)
    VALUES (5, "Aggie", "Cat", 20, 0, '2010, 1, 22', 3);

INSERT INTO pet (id, name, breed, age, dead, purchased_on, parent)
    VALUES (6, "Ben", "Dog", 130, 1, '2013, 12, 2', 1);

INSERT INTO pet (id, name, breed, age, dead, purchased_on, parent)
    VALUES (7, "Howard", "Worm", 89, 1, '1999, 6, 15', 6);

INSERT INTO pet (id, name, breed, age, dead, purchased_on, parent)
    VALUES (8, "Gary", "Bird", 11, 0, '2005, 11, 3', 5);

INSERT INTO person_pet (person_id, pet_id, pet_purchased_on) VALUES (5, 4, 2005);
INSERT INTO person_pet (person_id, pet_id, pet_purchased_on) VALUES (4, 5, 2010);
INSERT INTO person_pet (person_id, pet_id, pet_purchased_on) VALUES (2, 6, 2013);
INSERT INTO person_pet (person_id, pet_id, pet_purchased_on) VALUES (3, 7, 1999);
INSERT INTO person_pet (person_id, pet_id, pet_purchased_on) VALUES (2, 8, 2005);

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;

SELECT pet.name, person.first_name
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    pet_purchased_on > 2004
;

