output "environment" {
  value = var.environment
}

output "container_name" {
  value = docker_container.web.name
}

output "container_port" {
  value = var.container_port
}