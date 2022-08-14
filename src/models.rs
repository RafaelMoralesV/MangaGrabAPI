#[derive(Queryable)]
pub struct Author {
    pub id: i32,
    pub name: String,
    pub about: Option<String>,
}
