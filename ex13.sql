ALTER TABLE person ADD COLUMN dead integer;
ALTER TABLE person ADD COLUMN phone text;
ALTER TABLE person ADD COLUMN salary decimal;
ALTER TABLE person ADD COLUMN dob datetime;
ALTER TABLE person_pet ADD COLUMN purchase_on datetime;
ALTER TABLE pet ADD COLUMN parent integer;



UPDATE person SET salary = 60000.00 where first_name = 'Emilie';
UPDATE person SET dob = '5/4/1983' where first_name = 'Emilie';

INSERT INTO person (id, first_name, last_name, age, salary, dob) VALUES
	(3, 'George', 'Smith', 87, 1000.00, '4/3/1942'),
	(4, 'Jen', 'Baker', 30, 35000.00, '1/3/1983'),
	(5, 'Ellie', 'Jacobs', 25, 70000.00, '7/7/1988'),
	(6, 'Mia', 'Charles', 6, 0.00, '4/1/2008');

	INSERT INTO pet (id, name, breed, age, dead, parent) VALUES
	(4, 'Paws', 'poodle', 1, 0, 3),
	(5, 'Jad', 'cat', 5, 0, 3),
	(6, 'Max', 'dog', 8, 0, 1),
	(7, 'Pookems', 'parrot', 3, 0, 0),
	(8, 'Otis', 'golden', 3, 0, 4);

INSERT INTO person_pet (person_id, pet_id, purchase_on) VALUES
		(1, 4, '2013-03-02'),
		(1, 5, '2009-01-01'),
		(3, 6, '2008-07-07'),
		(4, 7, '2010-04-11');


SELECT pet.name, person.first_name, person_pet.purchase_on
			FROM person_pet, person, pet
			WHERE
			person_pet.purchase_on > '2004-01-01' AND
			pet.id = person_pet.pet_id AND
			person.id = person_pet.person_id;


SELECT name, parent FROM pet WHERE parent = 3;
