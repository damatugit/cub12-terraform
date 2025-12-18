resource "render_web_service" "backend" {
  name   = "cubi12-backend"
  plan   = "starter"
  region = var.region

  image {
    image_url = var.backend_image
  }

  env_vars = [
    {
      key   = "DATABASE_URL"
      value = render_postgres.db.connection_string
    },
    {
      key   = "JWT_SECRET"
      value = var.jwt_secret
    },
    {
      key   = "ASPNETCORE_ENVIRONMENT"
      value = "Production"
    }
  ]
}
