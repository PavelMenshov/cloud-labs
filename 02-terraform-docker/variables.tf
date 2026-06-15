variable "nginx_version" {
  type        = string
  description = "Nginx docker image version"
  default     = "nginx:latest"
}

variable "nginx_container_name" {
  type        = string
  description = "Container name for Nginx"
  default     = "tutorial"
}

variable "nginx_container_ports" {
  type        = list(number)
  description = "Available ports for Nginx Docker container"
  default     = [80, 8000]
}