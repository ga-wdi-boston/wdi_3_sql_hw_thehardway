-- DELETE FROM pet WHERE id IN (
--   SELECT pet.id
--   FROM pet, person_pet, person
--   WHERE
--   person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   person.first_name = "Zed"
-- );

-- SELECT * FROM pet;
-- SELECT * FROM person_pet;

-- DELETE FROM person_pet
--   WHERE pet_id NOT IN (
--     SELECT id FROM pet
--   );

-- SELECT * FROM person_pet;

-- Delete dead pets owned by me
-- DELETE FROM pet WHERE id IN (
--   SELECT pet.id
--   FROM pet, person_pet, person
--   WHERE
--   person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   person.first_name = "Prescott" AND
--   pet.dead = 1
-- );

-- SELECT * FROM pet;

 -- Delete people who have dead pets (comment out above lines to ensure such people exist)
-- DELETE FROM person WHERE id IN (
--   SELECT person.id
--   FROM pet, person_pet, person
--   WHERE
--   person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   pet.dead = 1
-- );

-- SELECT * FROM person;

-- Instead of deleting dead pets we can just remove them from person_pet
DELETE FROM person_pet WHERE pet_id IN (
  SELECT person_pet.pet_id
  FROM pet, person_pet
  WHERE
  pet.id = person_pet.pet_id AND
  pet.dead = 1
);

SELECT * FROM person_pet;
