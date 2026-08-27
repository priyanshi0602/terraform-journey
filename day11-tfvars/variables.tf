variable "container_name" {
  description = "Name of the Docker container"
  type        = string
}

variable "external_port" {
  description = "External port used to access the container"
  type        = number
}

variable "image_name" {
  description = "Docker image to use"
  type        = string
}