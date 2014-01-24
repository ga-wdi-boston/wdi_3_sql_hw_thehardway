ALTER TABLE person ADD COLUMN dead INTEGER;

ALTER TABLE person ADD COLUMN phone_number TEXT;

ALTER TABLE person ADD COLUMN salary FLOAT;

ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE pet ADD COLUMN dob DATETIME;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE person SET dead = 0, phone_number = '321-232-2321', salary = 43322, dob = 1971
  WHERE first_name = 'Zed';

UPDATE person SET dead = 0, phone_number = '324-842-2221', salary = 53322, dob = 1981
  WHERE first_name = 'Jordan';


UPDATE pet SET dob = 2010 WHERE id = 0;
UPDATE pet SET dob = 2011 WHERE id = 1;
UPDATE pet SET dob = 2005 WHERE id = 2;
