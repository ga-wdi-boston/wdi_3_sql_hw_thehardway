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

-- INSERT INTO person (id, first_name, last_name, age)
--     VALUES (0, "Becky", "Smith", 67);
-- INSERT INTO pet (id, name, breed, age, dead)
--     VALUES (0, "Kitty", "Aardvark", 2, 0);
-- INSERT INTO pet VALUES (1, "Duke", "Newt", 4, 0);