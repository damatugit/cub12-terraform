output "backend_url" {
  value = render_web_service.backend.url
}

output "frontend_url" {
  value = render_web_service.frontend.url
}

output "database_connection" {
  value     = render_postgres.db.connection_string
  sensitive = true
}