INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Karen", "Mak", 28);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (3, "Derbear", "Wolfdog", 1, 0);

INSERT INTO person_pet (person_id, pet_id) VALUES (1, 3);
