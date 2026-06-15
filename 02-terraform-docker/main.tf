resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Terraform created this file!"
}

resource "docker_image" "nginx" {
  name         = var.nginx_version
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.nginx_container_name
  ports {
    internal = var.nginx_container_ports[0]
    external = var.nginx_container_ports[1]
  }
}
