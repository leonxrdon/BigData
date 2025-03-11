# Hadoop y Apache Pig en Docker

Este proyecto proporciona un entorno de Docker para trabajar con Hadoop y Apache Pig, incluyendo un archivo CSV de ejemplo para practicar consultas.

## Requisitos

- [Docker](https://www.docker.com/products/docker-desktop)

## Instrucciones

### 1. Clonar el Repositorio

Clona este repositorio en tu máquina local:

```bash
git clone https://github.com/leo-narvaez/Hadoop-Examples.git
cd hadoop-pig
```

### 2. Docker

Construye la imagen docker
```bash
docker build -t hadoop-pig .
```
Ejecuta el contenedor
```bash
docker run -it hadoop-pig
```
Dentro del contenedor, verifica que se instalo correctamente

```bash
pig --version
```

### 3. Consultas con PIG
```bash
-- Cargar datos
A = LOAD '/data/users.csv' USING PigStorage(',') AS (id:int, name:chararray, age:int);

-- Mostrar todos los registros
DUMP A;

-- Contar cuántas personas hay
B = GROUP A ALL;
C = FOREACH B GENERATE COUNT(A);
DUMP C;

-- Filtrar personas mayores de 30
E = FILTER A BY age > 30;
DUMP E;

-- Obtener el promedio de edad
F = FOREACH (GROUP A ALL) GENERATE AVG(A.age);
DUMP F;
```
