INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', 'Shaw', 37);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);

INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person VALUES (1, 'Jordan', 'Morano', 31);

INSERT INTO pet VALUES (2, 'Rosie', 'American Bulldog', 12, 0);

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 2);
