resource "render_postgres" "db" {
  name   = "cubi12-db"
  plan   = "starter"
  region = var.region

  database_name = "cubi12"
  user          = "cubi12_user"
}