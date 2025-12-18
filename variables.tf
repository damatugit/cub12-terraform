variable "render_api_key" {
  description = "API Key de Render"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Región de Render"
  type        = string
  default     = "oregon"
}

variable "backend_image" {
  description = "Imagen Docker del backend"
  type        = string
}

variable "frontend_image" {
  description = "Imagen Docker del frontend"
  type        = string
}

variable "jwt_secret" {
  description = "JWT Secret para el backend"
  type        = string
  sensitive   = true
}