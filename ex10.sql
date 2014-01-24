UPDATE pet SET name = "Zed's Pet" WHERE id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = 'Zed'
);

SELECT * FROM pet;


UPDATE pet SET name = "Zed's Cold Pet" WHERE breed IN (
  SELECT pet.breed
  FROM pet, person, person_pet
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  pet.breed = 'Robot' AND
  person.first_name = 'Zed'
);

SELECT * FROM pet;
