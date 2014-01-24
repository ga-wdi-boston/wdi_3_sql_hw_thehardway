SELECT * FROM person;

UPDATE person SET dead = 0, phone_number = 4132446702, salary = 50000, dob = 1990-02-12 WHERE id = 0;

SELECT * FROM person;
SELECT * FROM person_pet;

UPDATE person_pet SET purchased_on = 1990-02-12 WHERE person_id = 0;
