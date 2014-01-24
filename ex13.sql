-- Update tables schema

ALTER TABLE person ADD COLUMN dead INTEGER;

ALTER TABLE person ADD COLUMN phone_number TEXT;

ALTER TABLE person ADD COLUMN salary FLOAT;

ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE pet ADD COLUMN dob DATETIME;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet ADD COLUMN parent INTEGER;


--  Update records

UPDATE person SET dead = 0, phone_number = '321-232-2321', salary = 43322, dob = 1971
  WHERE first_name = 'Zed';

UPDATE person SET dead = 0, phone_number = '324-842-2221', salary = 53322, dob = 1981
  WHERE first_name = 'Jordan';


UPDATE pet SET dob = 2010 WHERE id = 0;
UPDATE pet SET dob = 2011 WHERE id = 1;
UPDATE pet SET dob = 2005 WHERE id = 2;

UPDATE pet SET parent = 0 WHERE id = 1;
UPDATE pet SET parent = 0 WHERE id = 2;

UPDATE person_pet SET purchased_on = 2013 WHERE person_id = 0;
UPDATE person_pet SET purchased_on = 2005 WHERE person_id = 1;

--  Create 5 more people

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (2, 'Kelly', 'Joe', 12, 0, '222-222-2222', 0, 2000);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (3, 'Tim', 'Joe', 22, 0, '222-222-2222', 0, 2000);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (4, 'Sarah', 'Joe', 42, 0, '222-222-2222', 0, 2000);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (5, 'Joe', 'Joe', 32, 0, '222-222-2222', 1, 1980);

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (6, 'Matt', 'Joe', 32, 0, '222-222-2222', 0, 2000);


INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (3, 'Rocky', 'Bulldog', 2, 0, 2010, 2);
