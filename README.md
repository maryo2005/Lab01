# Lab01

Bienvenidos a iac, el dia de hoy quiero desplegar mi pagina web con el contenido: WEB01
Quiero desplegar mi contenido en 1 servidor web en el puerto 8080




docker build -t web01_01 .
docker run -d -p 4000:80 --name web01_01 web01
docker ps


docker build -t web02_02 .
docker run -d -p 4001:80 --name web01_02 web02
docker ps