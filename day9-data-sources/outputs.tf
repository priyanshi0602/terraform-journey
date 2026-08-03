output "image_name" {
  value = data.docker_image.nginx.name
}

output "image_id" {
  value = data.docker_image.nginx.id
}

output "container_name" {
  value = docker_container.web.name
}