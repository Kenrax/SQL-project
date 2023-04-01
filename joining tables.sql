/* Create table about the celebrities */
CREATE TABLE stars(id integer primary key, imie varchar(50), nazwisko varchar(50), rok_urodzenia INTEGER, film varchar(50));
INSERT INTO stars VALUES (1, 'Angelina', 'Jolie', 1975,'Mr. & Mrs. Smith');
INSERT INTO stars VALUES (2, 'Brad', 'Pitt', 1963,'Once Upon a Time in Hollywood');
INSERT INTO stars VALUES (3, 'Johnny', 'Depp', 1963,'The Ninth Gate');
INSERT INTO stars VALUES (4, 'Amber ', 'Heard', 1986,'Aquaman');
INSERT INTO stars VALUES (5, 'Paul ', 'Bettany', 1971,'Priest');
INSERT INTO stars VALUES (6, 'Jennifer', 'Connelly', 1970,'Top Gun: Maverick');
INSERT INTO stars VALUES (7, 'Cate', 'Blanchett', 1969,'The Lord of the Rings: The Fellowship of the Ring');
INSERT INTO stars VALUES (8, 'Leonardo', 'DiCaprio', 1974,'Titanic');
INSERT INTO stars VALUES (9, 'Margot', 'Robbie', 1990,'The Wolf of Wall Street');
INSERT INTO stars VALUES (10, 'Al', 'Pacino', 1940,'Scent of a Woman');
INSERT INTO stars VALUES (11, 'Vince', 'Vaughn', 1970,'The Break-Up');
INSERT INTO stars VALUES (12, 'Jennifer', 'Aniston',1969,'Bruce Almighty');
INSERT INTO stars VALUES (13, 'Justin', 'Theroux',1971,'Zoolander');

/* Create table about the fillm and award */
CREATE TABLE winners (id_star integer, nagroda varchar(50), film varchar(50));

INSERT INTO winners VALUES (1, 'Golden globe', 'The Tourist');
INSERT INTO winners VALUES (2, 'Academy award', 'The Curious Case of Benjamin Button');
INSERT INTO winners VALUES (3, 'Golden globe', 'Sweeney Todd: The Demon Barber of Fleet Street');
INSERT INTO winners VALUES (6, 'Academy award', 'A Beautiful Mind');
INSERT INTO winners VALUES (7, 'Academy award', 'Aviator');
INSERT INTO winners VALUES (8, 'Academy award', 'The Revenant');
INSERT INTO winners VALUES (10, 'Golden globe', 'Scent of a Woman');
INSERT INTO winners VALUES (12, 'Golden globe', 'Friends');

/* Create table about marrige */
CREATE TABLE marriage (id_star1 integer, id_star2 integer);

INSERT INTO marriage VALUES ( 1,2);
INSERT INTO marriage VALUES ( 3,4);
INSERT INTO marriage VALUES ( 5,6);
INSERT INTO marriage VALUES ( 12,13);

/*Show stars who got golden globe award*/
SELECT imie +' ' + nazwisko as fullname, nagroda, winners.film FROM stars
JOIN winners
ON stars.id = winners.id_star
WHERE nagroda = 'Golden globe';

/*show firstname and surname people who are marriage*/
SELECT a.imie + ' ' +a.nazwisko as ma³¿onek_1, b.imie + ' ' + b.nazwisko as ma³¿onek_2
FROM marriage 
JOIN stars a
ON marriage.id_star1 = a.id 
JOIN stars b 
ON marriage.id_star2 = b.id;