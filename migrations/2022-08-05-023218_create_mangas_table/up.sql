-- Your SQL goes here

CREATE TABLE mangas (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  editorial VARCHAR,
  author VARCHAR
);