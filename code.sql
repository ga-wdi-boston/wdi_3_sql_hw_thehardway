INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (8, "Zed", "Shaw", 37, 0, 234-445-3344, 40000.00, 1980-01-01);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (9, "Praggya", "Barretto", 34, 0, 617-343-4563, 50000, 1979-12-1);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (10, "Jennifer", "Steinberg", 35, 0, 234-345-5675, 30000, 1978-03-04);


INSERT INTO pet (id, name, breed, age, dead, parent)
    VALUES (8, "Fluffy", "Unicorn", 1000, 0, 8);

INSERT INTO pet VALUES (4, "Gigantor", "Robot", 1, 0, 8);

INSERT INTO pet (id, name, breed, age, dead, parent)
    VALUES (5, "Stella", "Cat", 1, 0, 9);

INSERT INTO pet (id, name, breed, age, dead, parent)
    VALUES (6, "Hamlet", "Hamster", 15, 1, 10);

INSERT INTO pet (id, name, breed, age, dead, parent)
    VALUES (7, "Omelet", "Hamster", 15, 1, 10);

INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (8, 3);
INSERT INTO person_pet VALUES (8, 4);
INSERT INTO person_pet (person_id, pet_id) VALUES (9, 5);
INSERT INTO person_pet (person_id, pet_id) VALUES (10, 6);
INSERT INTO person_pet (person_id, pet_id) VALUES (10, 7);
