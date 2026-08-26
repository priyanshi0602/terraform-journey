output "container_name" {
  description = "Name of the created Docker container"
  value       = docker_container.web.name
}

output "container_port" {
  description = "External port used to access Nginx"
  value       = var.external_port
}

output "image_name" {
  description = "Docker image used by the container"
  value       = var.image_name
}