# repositorio-2

# Practica con uso de Docker

En este repositorio se ha creado un archivo Dockerfile, que permite crear una imagen para una base de datos MYSQL en Docker y poder visualizarla.

## Requisitos

- Tener instalado Docker en su máquina.
- Tener instalada la imagen de MYSQL

## Instrucciones.

### 1. Crear una red de docker

Se eejecuta el comando en consola
```bash
docker network create red_docker
```

### 2. Instalar la imagen de MYSQL y crear el contenedor1

Ejecutamos este comando en consola, que tomara la ultima imagen de mysql
```bash
 docker run -d -p 33060:3306 --name mysql-db --network red_docker -e MYSQL_ROOT_PASSWORD=1234 mysql
 ```

3306 hace referencia al puerto de docker y 1234 es la contraseña

### 3. creamos otro contenedor que se comunique con el contendor de mysql

Creamos otro contenedor con el comando: 

```bash
docker run -it --name otro-contenedor --network red_docker python:alpine
 ```

Dicho contenedor no contiene la imagen de mysql

### 4. Conectarse al contenedor de mysql desde la terminal

Ejecutamos este comando en consola

```bash
docker exec -it mysql-db mysql -p
 ```

Solicitara la contraseña antes especificada

### 5. Conectarse a mysql con docker desde la terminal

Creamos una base de datos en mysql con el comando

```bash
create database mysql_docker;
use mysql_docker;
 ```
### 6. Crear una tabla desde la terminal

```bash
 create table nombre_tabla(
    -> id int auto_increment primary key,
    -> dato1 varchar(20) not null,
    -> fecha timestamp default current_timestamp on update current_timestamp);
 ```

### 7. LLena de datos tu bd

### 8. Ejecuta este comando

```bash
docker build -t consulta_mysql .
docker run --network red_docker consulta_mysql
 ```
