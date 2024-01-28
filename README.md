# repositorio-2

# Practica con uso de Docker

En este repositorio se ha creado un archivo Dockerfile, que permite crear una imagen para una base de datos MYSQL en Docker y poder visualizarla.

## Requisitos

- Tener instalado Docker en su máquina.
- Tener instalada la imagen de MYSQL

## Instrucciones.

### 1. Instalar la imagen de MYSQL

Ejecutamos este comando en consola, que tomara la ultima imagen de mysql
```bash
 docker run -d -p 33060:3306 --name mysql-db -e MYSQL_ROOT_PASSWORD=1234 mysql
 ```

3306 hace referencia al puerto de docker y 1234 es la contraseña

### 2. Conectarse a docker desde la terminal

Ejecutamos este comando en consola

```bash
docker exec -it mysql-db mysql -p
 ```

Solicitara la contraseña antes especificada

### 3. Conectarse a docker desde la terminal

Creamos una base de datos en mysql con el comando

```bash
create database mysql_docker;
use mysql_docker;
 ```
### 4. Crear una tabla desde la terminal

```bash
 create table nombre_tabla(
    -> id int auto_increment primary key,
    -> dato1 varchar(20) not null,
    -> fecha timestamp default current_timestamp on update current_timestamp);
 ```

### 5. Verificar 

Verificamos la conexion, en mi caso lo hice con dbeaver
Ingresamos con la informacion del comando del paso 1.

Si aparece un error "Public key Retriveal is not allowed" 

En dbeaver desde los drivers puedes modificar el campo "allow Public key Retriveal" a TRUE y el error se soluciona





