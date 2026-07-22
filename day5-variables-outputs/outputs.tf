output "container_name" {
  value = docker_container.web.name
}

output "container_port" {
  value = var.external_port
}