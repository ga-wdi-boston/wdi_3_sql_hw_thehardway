-- Add a dead column to person that's like the one in pet.
Alter table person add dead INTEGER
-- Add a phone_number column to person.
Alter table person add phone_number text
-- Add a salary column to person that is float.
alter table person add salary decimal
-- Add a dob column to both person and pet that is a DATETIME.
alter table person add dob datetime
alter table pet add dob datetime
-- Add a purchased_on column to person_pet of type DATETIME.
alter table person_pet add purchased_on datetime
-- Add a parent to pet column that's an INTEGER and holds the id for this pet's parent.
alter table pet add parent INTEGER
-- Update the existing database records with the new column data using UPDATE statements. 
-- Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.


-- Add 4 more people and 5 more pets and assign their ownership and what pet's are parents. On this last part remember that you get the id of the parent, then set it in the parent column.

-- Write a query that can find all the names of pets and their owners bought after 2004. Key to this is to map the person_pet based on the purchased_on column to the pet and parent.
select pet.name from pet, person_pet where
  person.id = person_pet.person_id AND
	person_pet.purchased_on.year > 2004

-- Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it.
