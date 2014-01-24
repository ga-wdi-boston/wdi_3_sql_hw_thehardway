sqlite> .tables
car         person      person_car  person_pet  pet
sqlite> DROP TABLE person;
sqlite> DROP TABLE person_pet;
sqlite> DROP TABLE PET;
sqlite> .tables
car         person_car

Macintosh-3:wdi_3_sql_hw_thehardway praggya$ sqlite3 ex3.db < ex3.sql
Macintosh-3:wdi_3_sql_hw_thehardway praggya$ sqlite3 ex3.db
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .tables
car         person      person_car  person_pet  pet

sqlite> SELECT * FROM person;
3|Zed|Shaw|37
8|Praggya|Barretto|34
9|Jennifer|Steinberg|35

sqlite> SELECT * FROM pet;
6|Fluffy|Unicorn|1000|0
7|Gigantor|Robot|1|1
10|Stella|Cat|1|0
11|Hamlet|Hamster|15|1
12|Omelet|Hamster|15|1

sqlite> SELECT * FROM person_pet;
3|6
3|7
8|10
9|11
9|12
