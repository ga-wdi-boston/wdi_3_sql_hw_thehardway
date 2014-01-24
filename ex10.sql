SELECT * FROM pet;

UPDATE pet SET name = "Zed's Pet" WHERE id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = "Zed"
);

SELECT * FROM pet;

-- Rename Zed's dead (rhymes!) pets
UPDATE pet SET name = "Zed's Dead Pet" where id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = "Zed" AND
  pet.dead = 1
);

SELECT * FROM pet;
