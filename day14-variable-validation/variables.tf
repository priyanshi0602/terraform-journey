variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number

  validation {
    condition     = var.container_port >= 80 && var.container_port <= 65535
    error_message = "Container port must be between 80 and 65535."
  }
}