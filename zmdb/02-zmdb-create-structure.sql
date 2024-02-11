---- MOVIES Database
-- Switch to movies database
-- https://www.postgresql.org/docs/current/app-psql.html#APP-PSQL-META-COMMAND-C-LC
\connect zmdb

---- RESET

DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS reviewers;

---- CREATION

CREATE TABLE people
(
    id         INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name  TEXT NOT NULL
);

CREATE TABLE movies
(
    id          INT PRIMARY KEY,
    title       TEXT NOT NULL,
    year        INT,
    time        INT,
    director_id INT  NOT NULL REFERENCES people (id)
);

CREATE TABLE roles
(
    actor_id       INT REFERENCES people (id),
    movie_id       INT REFERENCES movies (id),
    character_name TEXT,
    PRIMARY KEY (actor_id, movie_id)
);

CREATE TABLE reviewers
(
    id       INT PRIMARY KEY,
    nickname TEXT NOT NULL
);

CREATE TABLE reviews
(
    movie_id    INT REFERENCES movies (id),
    reviewer_id INT REFERENCES reviewers (id),
    stars       INT NOT NULL,
    PRIMARY KEY (movie_id, reviewer_id)
);
