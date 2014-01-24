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
  WHERE name = "Boomer";

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



