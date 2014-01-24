/*Practice writing SELECT commands and then put them in a DELETE WHERE IN
to remove those records found.
Try deleting any dead pets owned by you.
Do the inverse and delete people who have dead pets.
Do you really need to delete dead pets? Why not just
remove their relationship in person_pet and mark them dead? Write a query that
removes dead pets from person_pet.*/

INSERT INTO person (id, first_name, last_name, age)
    VALUES (2, "Al", "C", 27);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (5, "Fluff-Ball-Mc-Wicked", "Unicorn", 10, 0);

INSERT INTO pet VALUES (6, "Sir Shiny", "Robot-Puppy", 10, 1);


INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);
INSERT INTO person_pet VALUES (1, 3);

DELETE FROM pet_person WHERE id IN (
    SELECT person_pet
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    dead = 1 AND
    person.first_name = "Al"
);

SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;
