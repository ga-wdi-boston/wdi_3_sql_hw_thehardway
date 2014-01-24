ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE person SET dead = 0
  WHERE age > 0;

UPDATE person SET phone_number = 555-5555
  WHERE first_name = "Laure";

UPDATE person SET phone_number = 444-4444
  WHERE first_name = "Zed";

UPDATE person SET salary = 100,000
  WHERE first_name = "Laure";

UPDATE person SET salary = 50,000
  WHERE first_name = "Zed";

UPDATE person SET dob = 04/27/1989
  WHERE first_name = "Laure";

UPDATE person SET dob = 08/10/1976
  WHERE first_name = "Zed";

UPDATE pet SET dob = 09/03/2002
  WHERE name = "Tyson";

UPDATE person_pet SET purchased_on = 12/20/2003
  WHERE person_id = 1;

UPDATE person_pet SET purchased_on = 12/25/2005
  WHERE person_id = 0;

UPDATE pet SET parent = 1 WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Laure"
);

UPDATE pet SET parent = 0 WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zedd"
);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (2, "John", "Smith", 33, 0, 555-5555, 50,000, 05/30/1980);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (3, "Julie", "Smith", 33, 0, 555-5555, 70,000, 03/14/1980);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (4, "Sally", "Jones", 23, 0, 555-5555, 50,000, 05/30/1990);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (5, "Mark", "Funk", 10, 0, 555-5555, 0, 05/30/2014);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (5, "Spot", "Dalmatian", 2, 0, 04/07/2012, 2);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (6, "Joe", "Cat", 3, 0, 02/01/2011, 3);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (7, "George", "Iguana", 1, 0, 01/01/2013, 4);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (8, "Missy", "Golden Retriever", 2, 0, 07/13/2012, 5);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (9, "Felix", "Hamster", 3, 0, 06/12/2011, 0);

