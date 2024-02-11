---- MOVIES Database
-- Switch to movies database
-- https://www.postgresql.org/docs/current/app-psql.html#APP-PSQL-META-COMMAND-C-LC
\connect zmdb

---- CREATION

-- people
INSERT INTO people
VALUES (1, 'Quentin', 'Tarentino');
INSERT INTO people
VALUES (2, 'Guy', 'Ritchie');
INSERT INTO people
VALUES (3, 'James', 'Cameron');
INSERT INTO people
VALUES (4, 'Emile', 'Ardolino');
INSERT INTO people
VALUES (5, 'Brad', 'Pitt');
INSERT INTO people
VALUES (6, 'Mélanie', 'Laurent');
INSERT INTO people
VALUES (7, 'Chritoph', 'Waltz');
INSERT INTO people
VALUES (8, 'Matthew', 'McConaughey');
INSERT INTO people
VALUES (9, 'Hugh', 'Grant');
INSERT INTO people
VALUES (10, 'Charlie', 'Hunnam');
INSERT INTO people
VALUES (11, 'Leonardo', 'DiCaprio');
INSERT INTO people
VALUES (12, 'Kate', 'Winslet');
INSERT INTO people
VALUES (13, 'Billy', 'Zane');
INSERT INTO people
VALUES (14, 'Jennifer', 'Grey');
INSERT INTO people
VALUES (15, 'Patrick', 'Swayze');
INSERT INTO people
VALUES (16, 'Jerry', 'Orbach');
INSERT INTO people
VALUES (17, 'Jason', 'Statham');
INSERT INTO people
VALUES (18, 'Vinnie', 'Jones');

-- movies
INSERT INTO movies
VALUES (1, 'Inglourious Basterds', 2009, 153, 1);
INSERT INTO movies
VALUES (2, 'The Gentlemen', 2020, 113, 2);
INSERT INTO movies
VALUES (3, 'Titanic', 1997, 194, 3);
INSERT INTO movies
VALUES (4, 'Dirty Dancing', 1987, 160, 4);
INSERT INTO movies
VALUES (5, 'Snatch', 2000, 163, 2);

-- roles
INSERT INTO roles
VALUES (5, 1, 'Lt Aldo Raine');
INSERT INTO roles
VALUES (6, 1, 'Shosanna Dreyfus');
INSERT INTO roles
VALUES (7, 1, 'Col. Hans Landa');
INSERT INTO roles
VALUES (8, 2, 'Michael Pearson');
INSERT INTO roles
VALUES (9, 2, 'Fletcher');
INSERT INTO roles
VALUES (10, 2, 'Ray');
INSERT INTO roles
VALUES (11, 3, 'Jack Dawson');
INSERT INTO roles
VALUES (12, 3, 'Rose DeWitt');
INSERT INTO roles
VALUES (13, 3, 'Cal Hockley');
INSERT INTO roles
VALUES (14, 4, 'Frances "Baby" Houseman');
INSERT INTO roles
VALUES (15, 4, 'Johnny Castle');
INSERT INTO roles
VALUES (16, 4, 'Dr Jake Houseman');
INSERT INTO roles
VALUES (17, 5, 'Le turc');
INSERT INTO roles
VALUES (18, 5, 'Bullet Tooth Tony');
INSERT INTO roles
VALUES (5, 5, 'One Punch Mickey O''neil');

-- reviewers
INSERT INTO reviewers
VALUES (1, 'hungry jang');
INSERT INTO reviewers
VALUES (2, 'adoring sammet');
INSERT INTO reviewers
VALUES (3, 'elated nobel');
INSERT INTO reviewers
VALUES (4, 'insane tesla');
INSERT INTO reviewers
VALUES (5, 'sleepy mclean');
INSERT INTO reviewers
VALUES (6, 'insane ride');
INSERT INTO reviewers
VALUES (7, 'silly babbage');
INSERT INTO reviewers
VALUES (8, 'lonely volhard');
INSERT INTO reviewers
VALUES (9, 'lonely turing');
INSERT INTO reviewers
VALUES (10, 'desperate knuth');

-- reviews
INSERT INTO reviews
VALUES (1, 1, 5);
INSERT INTO reviews
VALUES (2, 1, 3);
INSERT INTO reviews
VALUES (4, 1, 2);
INSERT INTO reviews
VALUES (5, 1, 4);
INSERT INTO reviews
VALUES (1, 2, 1);
INSERT INTO reviews
VALUES (2, 2, 3);
INSERT INTO reviews
VALUES (3, 2, 2);
INSERT INTO reviews
VALUES (4, 2, 4);
INSERT INTO reviews
VALUES (5, 2, 5);
INSERT INTO reviews
VALUES (1, 3, 4);
INSERT INTO reviews
VALUES (4, 3, 3);
INSERT INTO reviews
VALUES (5, 3, 2);
INSERT INTO reviews
VALUES (3, 4, 5);
INSERT INTO reviews
VALUES (1, 5, 1);
INSERT INTO reviews
VALUES (1, 7, 3);
INSERT INTO reviews
VALUES (2, 7, 4);
INSERT INTO reviews
VALUES (3, 7, 5);
INSERT INTO reviews
VALUES (1, 8, 5);
INSERT INTO reviews
VALUES (5, 8, 5);
INSERT INTO reviews
VALUES (4, 9, 5);
