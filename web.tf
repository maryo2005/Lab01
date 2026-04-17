resource "docker_container" "web" {
  name  = "web-${terraform.workspace}"
  image = "lab/web"
  
  networks_advanced {
    name = docker_network.private_network.name
  }
  
  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
}