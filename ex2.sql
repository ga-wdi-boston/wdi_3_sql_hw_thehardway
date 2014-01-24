CREATE TABLE person (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, age INTEGER);
CREATE TABLE pet (id INTEGER PRIMARY KEY, name TEXT, breed TEXT, age INTEGER, dead INTEGER);
CREATE TABLE person_pet (person_id INTEGER, pet_id INTEGER);

-- Extra Credit:
-- In order to add this information to the person table, prior to dropping the person_pet table, one could do something like this:
    --ALTER TABLE person ADD COLUMN pet_id INTEGER
    --INSERT INTO person (pet_id) SELECT pet_id FROM person_pet;
-- In order to remove the person_pet table, one would use the 'drop table' command in this way:
    --DROP TABLE person_pet;
-- Car table and corresponding relation table:
    --CREATE TABLE car (id INTEGER PRIMARY KEY, make TEXT, model TEXT, year INTEGER, color INTEGER);
    --CREATE TABLE person_car (person_id INTEGER, car_id INTEGER);