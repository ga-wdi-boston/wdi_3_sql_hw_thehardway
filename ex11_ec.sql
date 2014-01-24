/* Practice REPLACE by replacing the Unicorn with a pet Parrot.*/


INSERT INTO pet (id, name, breed, age, dead)
    VALUES (5, "Fluff-Ball-Mc-Wicked", "Unicorn", 10, 0);

SELECT * FROM pet;

REPLACE INTO pet (id, name, breed, age, dead)
    VALUES (5, 'Fluff-Ball-Mc-Wicked','Parrot',10, 0);

SELECT * FROM pet;
