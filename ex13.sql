ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

UPDATE person SET dead = 0 WHERE id = 0;
UPDATE person SET phone_number = '617-555-1212' WHERE id = 0;
UPDATE person SET salary = 125000 WHERE id = 0;
UPDATE person SET dob = '1976-10-25' WHERE id = 0;

UPDATE pet SET parent = 10 WHERE id = 0;
UPDATE pet SET parent = 0 where id = 1;
UPDATE pet SET dob = '1013' WHERE id = 0;
UPDATE pet SET dob = '2013-01-01' WHERE id = 1;

UPDATE person_pet SET purchased_on = '1997-05-15' WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = '2013-12-25' WHERE pet_id = 1;

-- Add four more people (used some REPLACE INTOs for fun)
INSERT OR REPLACE INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (1, 'Prescott', 'Murphy', 31, 0, '313-670-0762', 575000, '1982-09-02');
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob) VALUES (2, 'Alex', 'Grant', 25, 0, '617-123-4567', 987000, '1988-05-02');
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob) VALUES (3, 'David', 'Fisher', 31, 0, '617-333-3333', 1270000, '1982-11-12');
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob) VALUES (4, 'Foo', 'Bar', 100, 0, '111-111-1111', 47, '1914-01-23');

-- Add five more pets
INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (2, 'Gus', 'Guinea Pig', 4, 1, '1995-08-04', 0);
INSERT INTO pet (id, name, breed, age, dead, dob, parent) VALUES (3, 'Henry', 'Dog', 7, 0, '2006-04-14', 0);
INSERT INTO pet (id, name, breed, age, dead, dob, parent) VALUES (4, 'Reptar', 'Dinosaur', 2012, 0, '0001-01-01', 10);
INSERT INTO pet (id, name, breed, age, dead, dob, parent) VALUES (5, 'Sally', 'Bunny', 3, 0, '2011-09-01', 4);
INSERT INTO pet (id, name, breed, age, dead, dob, parent) VALUES (6, 'Jade', 'Cat', 9, 0, '2004-03-25', 3);

-- Match up pets/owners/purchased_on for inserted entries
INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (1, 2, '1995-09-15');
INSERT INTO person_pet VALUES (1, 3, '2009-06-15');
INSERT INTO person_pet VALUES (3, 4, '1954-02-28');
INSERT INTO person_pet VALUES (4, 5, '2012-09-01');
INSERT INTO person_pet VALUES (3, 6, '2007-07-21');

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;

-- Find names of pets purcased after 2004 and owners
SELECT pet.name, person.first_name, person_pet.purchased_on
  FROM person, pet, person_pet
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person_pet.purchased_on >= '2004-01-01';

-- Find children of a given pet (it said not to overthink it so I guess they just mean
-- when feeding in the parent's ID?)
SELECT name FROM pet WHERE parent = 0;
