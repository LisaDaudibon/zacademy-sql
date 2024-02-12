\connect zmdb

-- Sélection simple
SELECT * FROM movies;

SELECT title FROM movies order by year ASC;

SELECT first_name, last_name FROM people;

SELECT title FROM movies WHERE year < 2000;

SELECT AVG(time) as average_time FROM movies;

-- Jointure
SELECT m.title, m.year, p.first_name as first_name_director, p.last_name as last_name_director
    FROM movies m
    JOIN people p ON m.director_id = p.id;

SELECT r.character_name, m.title, m.year
    FROM roles r
    JOIN movies m ON r.movie_id = m.id;

SELECT r.character_name, m.title, m.year
    FROM roles r
    JOIN movies m ON r.movie_id = m.id WHERE m.title = 'Titanic';

SELECT p.id, p.first_name, p.last_name
    FROM people p
    JOIN movies m ON p.id = m.director_id
    WHERE p.id IN (
        SELECT m.director_id
        FROM movies m
    );

SELECT r.stars
    FROM movies m
    JOIN reviews r ON m.id = r.movie_id
    WHERE r.movie_id = 2;

SELECT re.nickname
FROM reviews r
         JOIN reviewers re ON re.id = r.reviewer_id
         JOIN movies m ON r.movie_id = m.id
GROUP BY re.nickname
HAVING COUNT(DISTINCT m.id) = (SELECT COUNT(*) FROM movies);

SELECT re.nickname
    FROM reviewers re
        LEFT JOIN reviews r ON re.id = r.reviewer_id
    GROUP BY re.id, re.nickname
    HAVING COUNT(r.movie_id) = 0;

-- Grouper
SELECT m.title, AVG(r.stars)
    FROM reviews r
    JOIN movies m ON r.movie_id = m.id
    GROUP BY movie_id, m.title;

SELECT m.title, AVG(r.stars) as ratings_avg
    FROM reviews r
    JOIN movies m ON r.movie_id = m.id
    GROUP BY movie_id, m.title
    ORDER BY ratings_avg DESC;
