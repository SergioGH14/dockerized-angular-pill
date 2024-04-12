# Guía Rápida de Docker


## Autenticación en Docker Hub

Utiliza el siguiente comando para iniciar sesión en Docker Hub o cualquier otro registro de Docker:

```bash
docker login
```
```bash
docker login -u nombre-de-usuario -p password
```

Si es necesario autenticarte en un registro privado, especifica la URL del registro:

```bash
docker login [REGISTRY_URL]
```

Donde `[REGISTRY_URL]` representa la URL del registro privado que deseas utilizar.

## Comandos Básicos

### Listar Todas las Imágenes Locales

Para listar todas las imágenes almacenadas localmente en tu máquina:

```bash
docker images
```

### Construir una Imagen

Para construir una imagen a partir de un Dockerfile en el directorio actual, usa:

```bash
docker build -t nombre-de-tu-imagen .
```

### Ejecutar un Contenedor

Para iniciar un contenedor a partir de una imagen:

```bash
docker run -d -p puerto_host:puerto_contenedor nombre-de-tu-imagen
```

Donde `-d` corre el contenedor en segundo plano y `-p puerto_host:puerto_contenedor` mapea un puerto de tu máquina host a un puerto en el contenedor.

### Listar Contenedores Activos

Para ver todos los contenedores activos:

```bash
docker ps
```

Para ver todos los contenedores, incluyendo los inactivos:

```bash
docker ps -a
```

### Detener un Contenedor en ejecución

```bash
docker stop [CONTAINER_ID]
```

Donde `[CONTAINER_ID]` es el ID o nombre del contenedor que deseas detener.

### Eliminar un Contenedor

```bash
docker rm [CONTAINER_ID]
```

### Eliminar una Imagen

```bash
docker rmi [IMAGE_ID]
```

### Eliminar Imágenes, Contenedores, y Volúmenes no Utilizados

```bash
docker system prune
```

Este comando eliminará contenedores detenidos, redes no utilizadas, y imágenes colgadas.

