
DROP DATABASE IF EXISTS craigslist_db;

CREATE DATABASE craigslist_db;

\c craigslist_db;


CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL

);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    region_id INTEGER REFERENCES regions(id) NOT NULL,

);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL

);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id) NOT NULL ON DELETE CASCADE,
    region_id INTEGER REFERENCES regions(id) NOT NULL,
    location TEXT,
    category_id REFERENCES categories(id) NOT NULL
)