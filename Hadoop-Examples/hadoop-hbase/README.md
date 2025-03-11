### Práctica de Ejemplo: Uso Básico de HBase

#### 1. Acceder al Shell de HBase

Primero, necesitas acceder al shell de HBase. Puedes hacerlo ejecutando el siguiente comando en tu terminal:

```bash
docker exec -it hbase /bin/bash
```

Esto te dará acceso a la terminal del contenedor HBase. Luego, ejecuta el siguiente comando para entrar en el shell de HBase:

```bash
hbase shell
```

#### 2. Crear una Tabla

Una vez en el shell de HBase, puedes crear una nueva tabla. Supongamos que queremos crear una tabla llamada `usuarios` con una columna `info` para almacenar información de los usuarios.

```ruby
create 'usuarios', 'info'
```

Esto crea una tabla `usuarios` con una columna familia llamada `info`.

#### 3. Insertar Datos

Ahora que tenemos nuestra tabla, podemos insertar algunos datos. Usaremos el comando `put` para insertar datos en la tabla.

```ruby
put 'usuarios', 'usuario1', 'info:nombre', 'Juan'
put 'usuarios', 'usuario1', 'info:edad', '30'
put 'usuarios', 'usuario2', 'info:nombre', 'Ana'
put 'usuarios', 'usuario2', 'info:edad', '25'
```

Esto inserta dos usuarios (`usuario1` y `usuario2`) con sus respectivas edades y nombres.

#### 4. Consultar Datos

Para consultar los datos que acabamos de insertar, podemos usar el comando `get`. Por ejemplo, para obtener la información del `usuario1`, ejecuta:

```ruby
get 'usuarios', 'usuario1'
```

Deberías ver algo como esto:

```
COLUMN           CELL
info:nombre     timestamp=..., value=Juan
info:edad       timestamp=..., value=30
```

#### 5. Listar Todas las Filas

Si quieres ver todos los datos en la tabla, puedes usar el comando `scan`:

```ruby
scan 'usuarios'
```

Esto mostrará todas las filas y columnas de la tabla `usuarios`.

#### 6. Borrar Datos

Si necesitas borrar un dato, puedes usar el comando `delete`. Por ejemplo, para borrar la edad del `usuario1`, ejecutarías:

```ruby
delete 'usuarios', 'usuario1', 'info:edad'
```

#### 7. Verificar la Eliminación

Para verificar que la edad se ha eliminado, puedes volver a ejecutar:

```ruby
get 'usuarios', 'usuario1'
```

Deberías ver que la columna `info:edad` ya no aparece.

#### 8. Salir del Shell

Para salir del shell de HBase, simplemente escribe:

```ruby
exit
```

Y para salir del contenedor de HBase, puedes ejecutar:

```bash
exit
```

### Resumen

En esta práctica, hemos cubierto:

- Crear una tabla en HBase.
- Insertar datos en la tabla.
- Consultar datos específicos y listar todas las filas.
- Eliminar datos de la tabla.

HBase es una base de datos NoSQL muy poderosa, y este ejemplo solo rasca la superficie de lo que puedes hacer. Si deseas explorar más, considera investigar sobre el uso de filtros, escaneos avanzados y la integración con otros sistemas como Hadoop.

Si tienes más preguntas o necesitas ayuda adicional, ¡déjamelo saber!