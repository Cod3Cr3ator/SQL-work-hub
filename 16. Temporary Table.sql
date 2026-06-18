--  Temporary Table

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
second_name varchar(50),
favourite_movie varchar(100));

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES ('Mark', 'Jayden', 'Polygamist');

SELECT *
FROM temp_table;
