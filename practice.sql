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