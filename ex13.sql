ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone TEXT;
ALTER TABLE person ADD COLUMN salary REAL;
ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE pet SET parent = person_id WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id
);

UPDATE person_pet SET purchased_on = 2004;

SELECT first_name FROM person, person_pet, pet WHERE person.id = person_pet.person_id AND pet.id = person_pet.pet_id;

SELECT name FROM pet, person_pet, person WHERE pet.id = person_pet.pet_id AND person.id = person_pet.person_id;
