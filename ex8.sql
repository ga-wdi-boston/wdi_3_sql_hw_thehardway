DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Becky"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;


SELECT * FROM person;

DELETE FROM person
	WHERE person_id NOT IN (
		SELECT id FROM person
		);

SELECT * FROM person;
SELECT * FROM person_pet;

/*
Practice writing SELECT commands and then put them in a DELETE WHERE IN to remove those records found. Try deleting any dead pets owned by you.
Do the inverse and delete people who have dead pets.
Do you really need to delete dead pets? Why not just remove their relationship in person_pet and mark them dead? Write a query that removes dead pets from person_pet.
*/
