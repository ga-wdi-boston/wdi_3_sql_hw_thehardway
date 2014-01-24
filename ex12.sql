/* Only drop table if it exists. */
DROP TABLE IF EXISTS person;

/* Create again to work with it. */
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

/* Rename the table to peoples. */
ALTER TABLE person RENAME TO persons;

/* Add a love column to peoples. */
ALTER TABLE peoples ADD COLUMN love INTEGER;

/* Rename peoples back to person. */
ALTER TABLE persons RENAME TO person;

.schema person

--  We don't need that.
-- DROP TABLE person;