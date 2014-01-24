-- CREATE TABLE person (
--    id INTEGER PRIMARY KEY,
--    first_name TEXT,
--    last_name TEXT,
--    age INTEGER
-- );

# Tried in lowercase - it works
# Added other fields
create table person (
    id integer primary key,
    first_name text,
    last_name text,
    age integer,
    email text,
    number_of_siblings integer
);
