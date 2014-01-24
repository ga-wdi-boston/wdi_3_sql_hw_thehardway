-- Only drop if exists
DROP TABLE IF EXISTS person;

-- Remake our missing person TABLE
CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

-- Rename the table to reflect the plurality of persons
ALTER TABLE person RENAME TO peoples;

-- There are too many peoples; hate arises
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

-- You know what I actually prefered calling it person
ALTER TABLE peoples RENAME TO person;

.schema person

-- People suck
DROP TABLE person;
