UPDATE person SET first_name = "Hilarious Guy"
  WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
  WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = "Zed"
  WHERE first_name = "Hilarious Guy";

-- Extra credit: rename dead pets
UPDATE pet SET name = "DECEASED"
  WHERE pet.dead = 1;

SELECT * FROM pet;

-- Rename dead pets with subquery instead just to be less-efficient
UPDATE pet SET name = "WE MISS YOU" WHERE name IN (
    SELECT pet.name WHERE pet.dead = 1
  );

SELECT * FROM pet;
