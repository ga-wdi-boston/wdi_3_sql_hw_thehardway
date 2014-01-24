/* Use UPDATE to change my name back to "Zed" by my person.id.
Write an UPDATE that renames any dead animals to "DECEASED".
If you try to say they are "DEAD" it'll fail because SQL will think you mean
'set it to the column named "DEAD"', which isn't what you want.
Try using a subquery with this just like with DELETE */

UPDATE person SET first_name = "Zed"
    WHERE first_name = "Hilarious Guy";

UPDATE pet SET name = "DECEASED"
    WHERE dead = 1;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE pet SET name = "Baby" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT name, id FROM pet;
SELECT * FROM person_pet;
