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

-- Games with 'War' in the title
SELECT title, platform
FROM games
WHERE title LIKE '%War%';

-- Games released between 2016 and 2020
SELECT title, release_year
FROM games
WHERE release_year BETWEEN 2016 AND 2020;

-- Games with unknown release year
SELECT title
FROM games
WHERE release_year IS NULL;

-- List all players who scored more than 1000 points
SELECT player_name, score
FROM scores
WHERE score > 1000
ORDER BY score DESC;

-- Count how many players played each game
SELECT g.title, COUNT(s.player_name) AS player_count
FROM games g
LEFT JOIN scores s ON g.id = s.game_id
GROUP BY g.title
ORDER BY player_count DESC;

-- Top 3 highest scoring games
SELECT g.title, MAX(s.score) AS highest_score
FROM games g
JOIN scores s ON g.id = s.games_id
GROUP BY g.title
ORDER BY highest_score DESC
LIMIT 3;