-- Find all PC games
SELECT title, release_year
FROM games
WHERE platform = 'PC';

-- Count games per platform
SELECT platform, COUNT(*) AS total_games
FROM games
GROUP BY platform
ORDER BY total_games DESC;

-- Join games and scores
SELECT g.title, s.player_name, s.score
FROM games g
JOIN scores s ON g.id = s.game_id
ORDER BY s.score DESC;

-- Games released after 2016
SELECT title, platform, release_year
FROM games
WHERE release_year > 2016
ORDER BY release_year ASC;

-- Games NOT on PC
SELECT title, platform
FROM games
WHERE platform != 'PC';

-- Games with titles starting with 'The'
SELECT title
FROM games
WHERE title LIKE 'The%';

-- Oldest and newest game
SELECT
MIN(release_year) AS oldest,
MAX(release_year) AS newest
FROM games;

-- Average release year per platform
SELECT platform, AVG(release_year) AS avg_year
FROM games
GROUP BY platform;

-- Platform with more than 1 game
SELECT platform, COUNT(*) AS total
FROM games
GROUP BY platform
HAVING total > 1;

