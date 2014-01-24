SELECT * FROM person;

UPDATE person SET dead = 0, phone_number = 4132446702, salary = 50000, dob = 1990-02-12 WHERE id = 0;

SELECT * FROM person;
SELECT * FROM person_pet;

UPDATE person_pet SET purchased_on = 1990-02-12 WHERE person_id = 0;


INSERT INTO person VALUES (1, 'Bob', 'Henley', 27, 0, 4132444454, 34300, 1990-02-12);
INSERT INTO person VALUES (2, 'Jack', 'Henley', 24, 0, 4132445654, 30000, 1990-02-12);
INSERT INTO person VALUES (3, 'Kim', 'Henley', 56, 0, 4132442654, 200000, 1990-02-12);
INSERT INTO person VALUES (4, 'Joe', 'Henley', 27, 0, 4132456654, 40000000, 1990-02-12);

SELECT * FROM person;

INSERT INTO person_pet VALUES (1, 6, 1990-02-12);
INSERT INTO person_pet VALUES (1, 2, 1990-02-12);
INSERT INTO person_pet VALUES (1, 3, 1990-02-12);
INSERT INTO person_pet VALUES (1, 4, 1990-02-12);
INSERT INTO person_pet VALUES (1, 5, 1990-02-12);

SELECT * FROM person_pet;

INSERT INTO pet VALUES (2, 'fizzy', 'dog', 3, 0, (SELECT person_id FROM person_pet WHERE pet_id = 2), 1900-02-12);
INSERT INTO pet VALUES (3, 'bugs', 'cat', 3, 0, (SELECT person_id FROM person_pet WHERE pet_id = 3), 1900-02-12);
INSERT INTO pet VALUES (4, 'bobcat', 'cat', 4, 0, (SELECT person_id FROM person_pet WHERE pet_id = 4), 1900-02-12);
INSERT INTO pet VALUES (5, 'zack', 'elephant', 6, 0, (SELECT person_id FROM person_pet WHERE pet_id = 5), 1900-02-12);
INSERT INTO pet VALUES (6, 'mishe', 'emu', 2, 0, (SELECT person_id FROM person_pet WHERE pet_id = 6), 1900-02-12);

SELECT * FROM pet;
