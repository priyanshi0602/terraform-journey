variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "day10-nginx"
}

variable "external_port" {
  description = "Host port used to access Nginx"
  type        = number
  default     = 8086
}

variable "image_name" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"
}