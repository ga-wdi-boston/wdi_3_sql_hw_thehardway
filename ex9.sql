UPDATE person SET first_name = "Hilarious Guy"
    WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
    WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

-- Extra Credit 1

UPDATE person SET first_name = "Zed"
    WHERE id = 0;

-- Extra Credit 2

UPDATE pet SET name = "DECEASED"
    WHERE dead = 1;

-- Extra Credit 3

UPDATE pet SET name = "DECEASED"
    WHERE id IN (
      SELECT id
      FROM pet
      WHERE
      pet.dead = 1)
