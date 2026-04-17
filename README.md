# Lab01

Bienvenidos a iac, el dia de hoy quiero desplegar mi pagina web con el contenido: WEB01
Quiero desplegar mi contenido en 1 servidor web en el puerto 8080


cd c:\Users\maryo\OneDrive\Escritorio\TRABAJOS_UPAO\Infra\Lab01\src

# Construir imagen del API
docker build -t lab/api ./api

# Construir imagen de web01
docker build -t lab/web ./web/web01

# Luego usar docker-compose para orquestar todo
docker-compose up -d


# Crea los archivos principales de Terraform
type nul > main.tf
type nul > variables.tf
type nul > terraform.tfvars

# Crea archivos separados para cada recurso
type nul > web.tf
type nul > db.tf
type nul > api.tf

#Creamos los ambientes
terraform workspace new localhost
terraform workspace new dev