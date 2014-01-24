sqlite> UPDATE person SET first_name = "Zed" WHERE first_name = "Hilarious Guy";
sqlite> SELECT * FROM person;
3|Zed|Shaw|37
8|Praggya|Barretto|34

sqlite> UPDATE pet SET name = "Deceased" WHERE name = "Hamlet";
sqlite> select * from pet;
10|Stella|Cat|1|0
11|Deceased|Hamster|15|1
12|Omelet|Hamster|15|1
sqlite> UPDATE pet SET name = "Deceased" WHERE name = "Omelet";
sqlite> select * from pet;
10|Stella|Cat|1|0
11|Deceased|Hamster|15|1
12|Deceased|Hamster|15|1
