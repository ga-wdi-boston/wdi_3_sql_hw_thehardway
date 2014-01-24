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

#delete person who have dead pet
delete from person where person.id IN (select person.id from person, person_pet, pet where person.id = person_pet.person_id AND person_pet.pet_id = pet.id AND pet.dead = 1)

#remove dead pets from person_pet

delete from person_pet where person_pet.pet_id IN ( select person_pet.pet_id from person_pet, pet where person_pet.pet_id = pet.id AND pet.dead = 1)
