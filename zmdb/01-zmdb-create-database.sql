---- RESET

DROP DATABASE IF EXISTS movies WITH (FORCE);

---- CREATION

-- Try this
-- CREATE DATABASE movies
--     WITH OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.UTF-8';
-- ERROR: new collation (en_US.UTF-8) is incompatible with the collation of the template database (fr_FR.UTF-8)
-- Hint: Use the same collation as in the template database, or use template0 as template.
-- CREATE DATABASE actually works by copying an existing database. By default, it copies the standard system database named template1.

-- zenika_movie_database = zmdb
CREATE DATABASE zmdb
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    CONNECTION LIMIT = -1
    TEMPLATE template0;
