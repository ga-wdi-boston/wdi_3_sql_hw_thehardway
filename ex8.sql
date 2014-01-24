DELETE FROM pet WHERE id IN (SELECT pet.id FROM pet, person_pet, person WHERE person.id = person_pet.person_id AND pet.id = person_pet.pet_id AND person.first_name = "Zed");
sqlite> SELECT * FROM pet;
10|Stella|Cat|1|0
11|Hamlet|Hamster|15|1
12|Omelet|Hamster|15|1

DELETE FROM person WHERE id IN (SELECT person.id FROM pet, person_pet, person WHERE person.id = person_pet.person_id AND pet.id = person_pet.pet_id AND person.first_name = "Jennifer");
sqlite> SELECT * FROM person;
3|Zed|Shaw|37
8|Praggya|Barretto|34

I had trouble with the delete the relationship between owners and dead pets and accidentally deleted the whole table.
