

SELECT pet.id, pet.name, pet.age, pet.dead FROM pet, person_pet, person WHERE pet.id = person_pet.pet_id AND person_pet.person_id = person.id AND person.first_name = "Zed";
0|Fluffy|1000|0
1|Gigantor|1|1



SELECT pet.id, pet.name, pet.age, pet.dead FROM pet, person_pet, person WHERE pet.id = person_pet.pet_id AND person_pet.person_id = person.id AND person.first_name = "Praggya";
2|Stella|1|0

SELECT pet.id, pet.name, pet.age, pet.dead FROM pet, person_pet, person WHERE pet.id = person_pet.pet_id AND person_pet.person_id = person.id AND person.id = 2;
3|Hamlet|15|1
4|Omelet|15|1
