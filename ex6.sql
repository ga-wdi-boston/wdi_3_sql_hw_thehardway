INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);

SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.id = 1;
