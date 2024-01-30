DROP DATABASE IF EXISTS soccer_league_db;

CREATE DATABASE soccer_league_db;

\c soccer_league_db;


CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    wins INTEGER,
    losses INTEGER,
    ties INTEGER
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);


CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    team1_id INTEGER REFERENCES teams(id) NOT NULL,
    team2_id INTEGER REFERENCES teams(id) NOT NULL,
    team1_score INTEGER,
    team2_score INTEGER

 );

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id) NOT NULL,
    player_id INTEGER REFERENCES players(id) NOT NULL,

);

CREATE TABLE rosters (
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams(id) NOT NULL,
    player_id INTEGER REFERENCES players(id) NOT NULL,

);

CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE

),



