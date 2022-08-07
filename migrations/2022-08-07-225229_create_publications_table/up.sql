-- Your SQL goes here

CREATE TABLE publications(
    id SERIAL PRIMARY KEY,
    manga_id INT NOT NULL REFERENCES mangas(id) ON DELETE CASCADE,
    editorial_id INT NOT NULL REFERENCES editorials(id) ON DELETE CASCADE,
    created_date DATE DEFAULT CURRENT_DATE,
    initial_chapter INT NOT NULL,
    last_chapter INT NOT NULL,
    volume_number INT NOT NULL
)