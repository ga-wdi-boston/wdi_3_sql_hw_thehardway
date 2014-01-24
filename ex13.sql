ALTER TABLE person ADD COLUMN dead INTEGER;

ALTER TABLE person ADD COLUMN phone_number TEXT;

ALTER TABLE person ADD COLUMN salary FLOAT;

ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE pet ADD COLUMN dob DATETIME;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE TABLE person SET dead = 1
	WHERE first_name = "Zed";

UPDATE TABLE person SET dead = 0
	WHERE first_name = "Annaface";

UPDATE TABLE person SET phone_number = "837-283-1828"
	WHERE first_name = "Zed";

UPDATE TABLE person SET phone_number = "610-639-1642"
	WHERE first_name = "Annaface";

UPDATE TABLE person SET salary = 50000
	WHERE first_name = "Zed";

UPDATE TABLE person SET salary = 1000000
	WHERE first_name = "Annaface";

UPDATE TABLE person SET dob = 1985-12-11
	WHERE first_name = "Zed";

UPDATE TABLE person SET dob = 1957-08-23
	WHERE first_name = "Annaface";

UPDATE TABLE pet SET dob = 2003-12-11
	WHERE id = 0;

UPDATE TABLE pet SET dob = 2012-08-23
	WHERE id = 1;

UPDATE TABLE pet SET dob = 2009-10-22
	WHERE id = 2;

UPDATE TABLE pet SET dob = 2005-06-04
	WHERE id = 3;

UPDATE TABLE person_pet SET purchased_on = 2014-01-01
	WHERE pet_id = 0;

UPDATE TABLE person_pet SET purchased_on = 2014-01-03
	WHERE pet_id = 1;

UPDATE TABLE person_pet SET purchased_on = 2014-01-05
	WHERE pet_id = 2;

UPDATE TABLE person_pet SET purchased_on = 2014-01-08
	WHERE pet_id = 3;


INSERT INTO person (id, first_name, age, dead, phone_number, salary, dob)
	VALUES (3, "Molly", 22, 0, "999-888-7777", 10000, 1988-01-01);

INSERT INTO person (id, first_name, age, dead, phone_number, salary, dob)
	VALUES (4, "Rex", 100, 1, "123-456-1938", 45000, 1900-01-01);

INSERT INTO person (id, first_name, age, dead, phone_number, salary, dob)
	VALUES (5, "Amelia", 54, 0, "982-746-2732", 30000, 1973-01-01);

INSERT INTO person (id, first_name, age, dead, phone_number, salary, dob)
	VALUES (6, "Wyatt", 33, 0, "111-111-1111", 68000, 1969-01-01);


INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES (4, "Spot", "dog", 7, 0, 1);

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES (5, "Chairman Meow", "cat", 2, 0, 1);

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES (6, "Hermione", "ostrich", 6, 1, 2);

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES (7, "Clifford", "dog", 1, 0, 4);

INSERT INTO pet (id, name, breed, age, dead, parent)
	VALUES (8, "Jack", "wolf", 9, 1, 1);


INSERT INTO person_pet (person_id, pet_id)
	VALUES (3,8);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (3,7);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (4,6);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (5,5);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (5,4);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (3,4);



SELECT pet.name, person.name IN person, pet, person_pet
	WHERE
	pet.id = person_pet.pet_id AND
	person.id = person_pet.person_id AND
	person_pet.purchased_on > 2004-01-01;


SELECT pet.name IN pet
	WHERE
	pet.parent = 1;  -- specify this manually, I think?



SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;
