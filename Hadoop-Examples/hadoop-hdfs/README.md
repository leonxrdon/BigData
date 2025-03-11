
## Iniciar clúster
```bash
docker-compose up -d
```

## Detener
```bash
docker-compose down
```

## Acceder
[http://localhost:9870](http://localhost:9870)

## Ingresar al contenedor
```bash
docker exec -it namenode /bin/bash
```

## Comandos en el contenedor
```bash
hdfs dfs -mkdir /user/test
echo "Hello from new environment" > test.txt
hdfs dfs -put test.txt /user/test/
hdfs dfs -ls /user/test
```

## Leer
```bash
hdfs dfs -cat /datos/ejemplo_datos.csv
```

## Para subirlo a local
```bash
docker cp PruebaDiagnostico.mp4 namenode:/opt/hadoop/
```

## Para moverlo del local a hdfs
```bash
hdfs dfs -put PruebaDiagnostico.mp4 /folder
```
