

SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = 2 AND
    person_pet.person_id = person.id AND
    person.id = 1;
