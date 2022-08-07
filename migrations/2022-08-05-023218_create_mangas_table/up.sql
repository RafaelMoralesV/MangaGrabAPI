-- Your SQL goes here

CREATE TABLE mangas (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  author VARCHAR,
  about TEXT
);