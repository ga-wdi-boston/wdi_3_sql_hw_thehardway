SELECT * FROM pet;

UPDATE pet SET dead = 1 WHERE id = 0;

UPDATE pet SET name = "Zed's pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
) AND dead = 0;

SELECT * FROM pet;
