output "docker_container_id" {
  value       = docker_container.nginx.id
  description = "ID of the Nginx Docker container"
}

output "nginx_ports" {
  value = {
    internal = var.nginx_container_ports[0]
    external = var.nginx_container_ports[1]
  }
  description = "Available Nginx ports in Docker container"
}