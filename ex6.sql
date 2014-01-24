SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.first_name = "Zed";



SELECT pet.name, pet.id
	from pet, person_pet, person
	where
	pet.id = person_pet.pet_id AND
	person.id = person_pet.person_id AND
	person.first_name = 'Emilie';
