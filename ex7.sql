-- Dead pets T_T
SELECT name, age FROM pet WHERE dead =1;

-- Poor robot and Gus the guinea pig ;;
DELETE FROM pet WHERE dead = 1;

-- Make sure the robot has been eradicated
SELECT * FROM pet;

-- Come back robot!
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 0);

-- Veryify we have robots
SELECT * FROM pet;

-- Extra credit below (delete and read with new values)
DELETE FROM pet WHERE name = 'Gus';
INSERT INTO pet VALUES (2, 'Gus', 'Best Guinea Pig Ever', 8, 1);
