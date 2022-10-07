<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# Importante
Tener instalado [Docker Desktop](https://www.docker.com/)!!!


# Comandos usados

Login de Docker Hub
```
docker login
```

Generar la imagen, especificar el TAG (-t) y el punto significa dónde encontrará el Dockerfile (relativo a el directorio donde corres el comando)
```
docker build -t nest-rest .
```

Renombrar imagen local
```
docker image tag nest-rest klerith/nest-rest-prod:1.0.0
```

Correr la imagen en el puerto 80 de mi equipo con el 3000 del contenedor
```
docker run -p 80:3000 klerith/nest-rest-prod:1.0.0
```

Subir la imagen al repositorio
```
docker push klerith/nest-rest-prod 
```