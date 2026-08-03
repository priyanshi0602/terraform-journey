terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Read an existing Docker image
data "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create a container using the existing image
resource "docker_container" "web" {
  name  = "day9-nginx"
  image = data.docker_image.nginx.id

  ports {
    internal = 80
    external = 8085
  }
}