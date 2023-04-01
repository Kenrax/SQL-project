/* What does the app's SQL look like? */
CREATE TABLE wyniki (id INTEGER PRIMARY KEY, czas INTEGER, miejsce varchar(50), data varchar(50));
INSERT INTO wyniki VALUES (1,60, 'drugie', '02-06-2022');
INSERT INTO wyniki VALUES (2,80, 'pierwsze', '03-07-2022');
INSERT INTO wyniki VALUES (3,60, 'drugie', '15-08-2022');
INSERT INTO wyniki VALUES (4,150, 'siódme', '12-09-2022');
INSERT INTO wyniki VALUES (5,110, 'czwarte', '02-10-2022');
SELECT * from wyniki;

/*show how update data in table*/
UPDATE wyniki SET miejsce = 'dziesi¹te' WHERE id = 4;
UPDATE wyniki SET czas = 180 WHERE id = 5;
UPDATE wyniki SET data = '03-05-2021' WHERE id = 1;
SELECT * from wyniki;

/*delete data in table*/
DELETE FROM wyniki WHERE id = 3;
SELECT * from wyniki;
