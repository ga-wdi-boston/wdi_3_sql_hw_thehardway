-- Ex 1 ==================

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

-- Ex 3 ==================

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Emilie", "Reiser", 37);

INSERT INTO pet VALUES (3, "Mama", "cat", 1, 0);

-- Ex 4 ==================

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (1, 3);
INSERT INTO person_pet VALUES (1, 2);

-- Ex 5 ==================

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > 30;

SELECT * FROM pet WHERE breed = 'cat' and age < 5;

SELECT name, age, breed FROM pet WHERE age > 3 OR dead = 1;

-- Ex 6 ==================

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


-- Ex 7 ==================

/* make sure there's dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;


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


DELETE FROM pet WHERE id IN (
	SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = "Emilie"
);

DELETE FROM person_pet
    WHERE pet_id NOT IN (
      SELECT id FROM pet
    );

SELECT * FROM pet;



