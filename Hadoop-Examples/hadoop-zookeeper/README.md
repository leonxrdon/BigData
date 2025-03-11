# Práctica de Ejemplo: Uso Básico de Zookeeper

### Paso 1: Levanta el clúster de Zookeeper

Ejecuta el siguiente comando en el mismo directorio donde tienes tu archivo `docker-compose.yml`:

```bash
docker-compose up -d
```

Este comando iniciará tres contenedores de Zookeeper (`zoo1`, `zoo2` y `zoo3`) en los puertos `2181`, `2182` y `2183`, respectivamente. Esto crea un clúster de Zookeeper con tres nodos, que pueden comunicarse entre sí y mantener la disponibilidad del clúster.

### Paso 2: Verifica el estado del clúster

Para verificar el estado de cada nodo, puedes entrar en cada contenedor de Zookeeper y ejecutar el comando `zkServer.sh status`. 

Ejecuta:

```bash
docker exec -it <nombre_contenedor> zkServer.sh status
```

Ejemplo:

```bash
docker exec -it zoo1 zkServer.sh status
docker exec -it zoo2 zkServer.sh status
docker exec -it zoo3 zkServer.sh status
```

Deberías ver un nodo con el rol de *leader* (líder) y dos con el rol de *follower* (seguidor).

### Paso 3: Conéctate al cliente Zookeeper

Para interactuar con el clúster, puedes usar el cliente de Zookeeper y probar algunos comandos básicos. Conéctate a través de cualquiera de los nodos ejecutando:

```bash
docker exec -it zoo1 zkCli.sh -server localhost:2181
```

Este comando abre el cliente de Zookeeper conectado al nodo `zoo1`.

### Paso 4: Realiza operaciones básicas de creación y lectura de *znodes*

1. **Crear un `znode`**: En Zookeeper, los nodos del sistema se llaman *znodes*. Puedes crear un *znode* con un valor específico usando el comando `create`. 
   
   Ejecuta en el cliente:
   ```bash
   create /mi_primer_znode "hola_zookeeper"
   ```
   Esto crea un *znode* llamado `/mi_primer_znode` con el valor `"hola_zookeeper"`.

2. **Leer un `znode`**: Para verificar que el *znode* fue creado, puedes usar el comando `get`:
   
   ```bash
   get /mi_primer_znode
   ```

   Esto debería devolver el valor asociado al *znode*, que en este caso es `"hola_zookeeper"`.

3. **Actualizar un `znode`**: Cambia el valor del *znode* usando `set`:
   
   ```bash
   set /mi_primer_znode "nuevo_valor"
   ```

4. **Eliminar un `znode`**: Finalmente, puedes eliminar el *znode* para limpiar la práctica:
   
   ```bash
   delete /mi_primer_znode
   ```

### Paso 5: Validar la replicación de datos

Para verificar la replicación automática de los datos, puedes conectarte al cliente en otro nodo, como `zoo2` o `zoo3`, y repetir el comando `get /mi_primer_znode`. Deberías ver el mismo valor, lo cual confirma que Zookeeper está replicando correctamente la información entre nodos.

### Resumen de comandos para la práctica

1. Crear el clúster: `docker-compose up -d`
2. Verificar el estado de cada nodo: `docker exec -it <nombre_contenedor> zkServer.sh status`
3. Conectar al cliente: `docker exec -it zoo1 zkCli.sh -server localhost:2181`
4. Comandos en el cliente de Zookeeper:
   - Crear: `create /mi_primer_znode "hola_zookeeper"`
   - Leer: `get /mi_primer_znode`
   - Actualizar: `set /mi_primer_znode "nuevo_valor"`
   - Eliminar: `delete /mi_primer_znode`
