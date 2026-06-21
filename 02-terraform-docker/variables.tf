variable "nginx_version" {
  type        = string
  description = "Nginx docker image version"
  default     = "nginx:latest"
  validation {
    condition = can(regex("^nginx:", var.nginx_version))
    error_message = "Variable nginx_version must start with 'nginx:'."
  }
}

variable "nginx_container_name" {
  type        = string
  description = "Container name for Nginx"
  default     = "tutorial"
}

variable "nginx_container_ports" {
  type        = object({internal=number, external=number})
  description = "Available ports for Nginx Docker container"
  default = {
    external = 8080
    internal = 80
  }
}