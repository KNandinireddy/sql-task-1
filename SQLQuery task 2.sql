INSERT INTO library (id, name, location, established_year)
VALUES (1, 'Central Library', 'Downtown', 1995);

INSERT INTO library (id, name, location, established_year)
VALUES (2, 'story station', 'hyderabad', 2002);

INSERT INTO library (id, name, established_year)
VALUES (3, 'Community Library', 2008); 

INSERT INTO library (id, name, location, established_year)
VALUES (4, 'Northside Library', NULL, 2015);

UPDATE library
SET location = 'East Side'
WHERE id = 2;

DELETE FROM library
WHERE id = 4;