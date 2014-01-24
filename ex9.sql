UPDATE person SET first_name = "Hilarious Guy"
    WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
    WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;
#change name by id
UPDATE person SET first_name = "Zed"
		WHERE id = (select id from person where first_name = "hilarious Guy")

UPDATE pet SET name = "DECEASED"
		where dead = 1
