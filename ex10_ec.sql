/* Write an SQL that only renames dead pets I own to "Zed's Dead Pet".
Go to the SQL As Understood By SQLite page and start reading through the docs for
 CREATE TABLE, DROP TABLE, INSERT, DELETE, SELECT, and UPDATE.
Try out some of the interesting things you find in these docs,
and take notes on things you don't understand so you can research them more later. */

SELECT * FROM pet;

UPDATE pet SET name = "Zed's Dead Pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    pet.dead = 1 AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;

UPDATE pet SET name = "PUPPY-PUPPY" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;

UPDATE person SET first_name = "Spock"
    WHERE first_name = "Zed";

SELECT * FROM person;
