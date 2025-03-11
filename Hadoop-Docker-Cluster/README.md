# Proyecto de Clúster Hadoop con YARN
Este proyecto tiene como objetivo configurar un clúster de Hadoop utilizando Docker, que incluye el sistema de archivos HDFS y el gestor de recursos YARN. El clúster permite realizar operaciones de almacenamiento y procesamiento de datos a gran escala de manera eficiente. 
## Descripción
Hadoop es un marco de trabajo de código abierto diseñado para el procesamiento y almacenamiento distribuido de grandes volúmenes de datos. Utiliza una arquitectura de clúster que permite a múltiples nodos trabajar en conjunto para manejar tareas complejas. En este proyecto, hemos creado un clúster básico que incluye:
- **HDFS (Hadoop Distributed File System)**: Un sistema de archivos distribuido que permite almacenar grandes archivos a través de múltiples máquinas, garantizando la redundancia y la alta disponibilidad de los datos.
- **YARN (Yet Another Resource Negotiator)**: Un gestor de recursos que permite administrar y asignar recursos en el clúster de manera eficiente, facilitando la ejecución de aplicaciones distribuidas.
- **Word Count**: Como ejemplo práctico, se implementa un programa de conteo de palabras que demuestra cómo procesar datos almacenados en HDFS usando MapReduce. Este ejemplo es comúnmente utilizado para ilustrar las capacidades de procesamiento de datos de Hadoop.
El proyecto también incluye configuraciones para la integración con Hive, lo que permite realizar consultas SQL sobre los datos almacenados en HDFS, y la posibilidad de conectar con herramientas de visualización como Power BI, lo que facilita la creación de informes y análisis de datos.
El uso de Docker simplifica la configuración y despliegue del clúster, permitiendo a los desarrolladores y analistas de datos trabajar en un entorno controlado y reproducible. Esta configuración es ideal para propósitos educativos, así como para el desarrollo y pruebas de aplicaciones en un entorno similar al de producción.

## Funcionalidades Clave

- **Almacenamiento y procesamiento de grandes volúmenes de datos** utilizando Hadoop y YARN.
- **Ejemplo de conteo de palabras** que demuestra el uso de MapReduce.
- **Integración con Hive** para realizar consultas SQL sobre datos en HDFS.
- **Facilidad de uso** gracias a la contenedorización con Docker, que permite a cualquier usuario levantar el clúster con un simple comando.

## Requisitos

- Docker
- Docker Compose

## Instrucciones de Configuración
### 1. Clonar el Repositorio
```bash
git clone https://github.com/leo-narvaez/hadoop-docker-cluster
cd hadoop-docker-cluster
```
### 2. Construir y Levantar el Clúster
```bash
docker-compose up -d
```
### 3. Verificar el Estado del Clúster
Puedes verificar que los contenedores estén en funcionamiento con:
```bash
docker ps
```

## Realizar el Conteo de Palabras
### 1. Crear un Archivo de Prueba
```bash
echo "Este es un ejemplo de texto largo que vamos a usar para probar la funcionalidad de Word Count en Hadoop." > test.txt
```
### 2. Copiar el Archivo al Contenedor
```bash
docker cp test.txt namenode:/tmp/
```
### 3. Subir el Archivo a HDFS
```bash
docker exec -it namenode hdfs dfs -put /tmp/test.txt /
```
### 4. Ejecutar el Comando de Word Count
```bash
docker exec -it namenode yarn jar /opt/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.5.jar wordcount /test.txt /output
```
### 5. Ver los Resultados
```bash
docker exec -it namenode hdfs dfs -cat /output/part-r-00000
```
## Detener el Clúster
Cuando termines de trabajar, puedes detener el clúster con:
```bash
docker-compose down
```
