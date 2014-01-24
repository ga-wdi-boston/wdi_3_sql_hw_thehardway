DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;

DELETE FROM pet WHERE id IN (
	select pet.id
	FROM pet, person_pet, person
	WHERE
	person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	pet.dead = 1
);

DELETE FROM person_pet WHERE pet_id IN (
	select id from pet WHERE pet.dead = 1
);

SELECT * FROM person_pet;
