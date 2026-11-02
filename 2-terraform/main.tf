terraform {
  required_providers {
    docker = { source = "kreuzwerker/docker", version = "~> 3.0" }
  }
}
provider "docker" {}

variable "replicas" {
  type    = number
  default = 3
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "web" {
  count = var.replicas
  name  = "web-${count.index}"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080 + count.index
  }
}

output "urls" {
  value = [for i in range(var.replicas) : "http://localhost:${8080 + i}"]
}
