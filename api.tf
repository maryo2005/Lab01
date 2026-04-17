resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = "lab/api"
  
  networks_advanced {
    name = docker_network.private_network.name
  }
  
  ports {
    internal = 3000
    external = var.api_port[terraform.workspace]
  }
}