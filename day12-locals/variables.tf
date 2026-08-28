variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "day12-nginx"
}

variable "external_port" {
  description = "Port exposed on localhost"
  type        = number
  default     = 8088
}