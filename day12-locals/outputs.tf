output "container_name" {
  value = docker_container.web.name
}

output "container_url" {
  value = "http://localhost:${var.external_port}"
}

output "docker_image" {
  value = local.image_name
}