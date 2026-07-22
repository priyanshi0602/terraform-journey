terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "web" {
  image = docker_image.nginx.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = var.external_port
  }
}