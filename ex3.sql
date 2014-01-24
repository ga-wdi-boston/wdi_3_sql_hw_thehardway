INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (first_name, last_name, age)
	VALUES ("Mike", "Stone", 37);

INSERT INTO pet (name, breed, age, dead)
	VALUES ("Chester", "Dog", 13, 1);

INSERT INTO pet (name, breed, age, dead)
	VALUES ("Paul", "Cat", 13, 1);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 1);
