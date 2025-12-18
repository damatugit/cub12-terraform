resource "render_web_service" "frontend" {
  name   = "cubi12-frontend"
  plan   = "starter"
  region = var.region

  image {
    image_url = var.frontend_image
  }

  env_vars = [
    {
      key   = "VITE_API_URL"
      value = render_web_service.backend.url
    }
  ]
}