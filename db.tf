resource "docker_container" "db" {
  name  = "bd-${terraform.workspace}"
  image = "postgres:latest"
  
  networks_advanced {
    name = docker_network.private_network.name
  }
  
  env = [
    "POSTGRES_PASSWORD=root"
  ]
  
  ports {
    internal = 5432
    external = var.db_port[terraform.workspace]
  }
}