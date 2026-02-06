DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS scores;

CREATE TABLE IF NOT EXISTS games (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    platform TEXT NOT NULL,
    release_year INTEGER,
    multiplayer INTEGER DEFAULT 0
);

CREATE TABLE scores (
    id INTEGER PRIMARY KEY,
    game_id INTEGER,
    player_name TEXT,
    score INTEGER,
    FOREIGN KEY(game_id) REFERENCES games(id)
);
