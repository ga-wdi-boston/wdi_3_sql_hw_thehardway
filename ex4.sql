INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

-- Extra Credit 1
INSERT INTO person_pet VALUES (1, 2);

-- Extra Credit 2
-- This table would seem to allow for multiple people to own the same pet,
-- which would make sense in the case of a family pet.

-- Extra Credit 3
-- In this case, the third relational table would probably work better to pair
-- pets and people, since you would not have to repeat an entire record for a
-- person for each pet they own. You would still have to repeat their id for each
-- pet, but this would duplicate less information.
