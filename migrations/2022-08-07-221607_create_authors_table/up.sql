-- Your SQL goes here

CREATE TABLE authors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    about TEXT
);

ALTER TABLE mangas
    DROP COLUMN author,
    ADD author_id INT NOT NULL REFERENCES authors(id) ON DELETE CASCADE;
