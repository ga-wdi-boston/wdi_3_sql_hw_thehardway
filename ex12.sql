sqlite> DROP TABLE IF EXISTS person;
sqlite> CREATE TABLE person (
   ...> id INTEGER PRIMARY KEY,
   ...> first_name TEXT,
   ...> last_name TEXT,
   ...> age INTEGER);
sqlite> ALTER TABLE person RENAME TO peoples;
sqlite> ALTER TABLE peoples ADD COLUMN hatred INTEGER;
sqlite> ALTER TABLE peoples RENAME TO person;
sqlite> .schema person
CREATE TABLE "person" (
id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
age INTEGER, hatred INTEGER);
sqlite> DROP TABLE person;
sqlite> CREATE TABLE person (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, age INTEGER, height INTEGER, weight INTEGER);
