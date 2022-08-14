table! {
    authors (id) {
        id -> Int4,
        name -> Varchar,
        about -> Nullable<Text>,
    }
}

table! {
    editorials (id) {
        id -> Int4,
        name -> Nullable<Varchar>,
        country -> Nullable<Varchar>,
    }
}

table! {
    mangas (id) {
        id -> Int4,
        title -> Varchar,
        about -> Nullable<Text>,
        author_id -> Nullable<Int4>,
    }
}

table! {
    publications (id) {
        id -> Int4,
        manga_id -> Int4,
        editorial_id -> Int4,
        created_date -> Nullable<Date>,
        initial_chapter -> Int4,
        last_chapter -> Int4,
        volume_number -> Int4,
    }
}

joinable!(mangas -> authors (author_id));
joinable!(publications -> editorials (editorial_id));
joinable!(publications -> mangas (manga_id));

allow_tables_to_appear_in_same_query!(authors, editorials, mangas, publications,);
