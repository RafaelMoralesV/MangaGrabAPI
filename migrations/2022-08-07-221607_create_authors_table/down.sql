-- This file should undo anything in `up.sql`

ALTER TABLE mangas
    DROP CONSTRAINT author_id,
    DROP COLUMN author_id,
    ADD author VARCHAR;

DROP TABLE authors;