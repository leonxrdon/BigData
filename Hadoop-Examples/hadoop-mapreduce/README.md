Para probar la imagen de Docker `vhiveease/mapreduce-reducer`, sigue estos pasos:

1. **Instala Docker**: Si no tienes Docker instalado, descárgalo e instálalo desde [docker.com](https://www.docker.com/get-started).

2. **Inicia el servicio de Docker**: Asegúrate de que el servicio de Docker esté corriendo en tu máquina. Puedes verificarlo ejecutando el siguiente comando en tu terminal:

   ```bash
   docker --version
   ```

3. **Descarga la imagen**: Ejecuta el comando que mencionaste para descargar la imagen:

   ```bash
   docker pull vhiveease/mapreduce-reducer
   ```

   Este comando descargará la imagen desde el registro de Docker. Espera a que se complete la descarga.

4. **Verifica la descarga**: Una vez que la imagen se haya descargado, puedes verificar que esté disponible localmente ejecutando:

   ```bash
   docker images
   ```

   Deberías ver `vhiveease/mapreduce-reducer` en la lista de imágenes disponibles.

5. **Ejecuta la imagen**: Puedes ejecutar la imagen en un contenedor. Dependiendo de lo que necesites hacer con la imagen, el comando puede variar. Aquí hay un ejemplo básico:

   ```bash
   docker run -it vhiveease/mapreduce-reducer
   ```

   Esto ejecutará el contenedor y te dará acceso a su terminal.

6. **Usa la funcionalidad**: Una vez dentro del contenedor, puedes utilizar la funcionalidad que ofrece `mapreduce-reducer` según lo que necesites.
    ```bash
    docker run -it -v /data/prueba.txt vhiveease/mapreduce-reducer
    ```




### Si falla por capnp 
# Modificar el Dockerfile

Si planeas usar este contenedor regularmente y quieres que `capnp` esté disponible cada vez que lo inicies, puedes crear un nuevo `Dockerfile` basado en `vhiveease/mapreduce-reducer` y agregar la instalación de `capnp` allí.

### Pasos para solucionar el problema

1. **Verifica la ubicación del archivo `requirements.txt`**:
   - Asegúrate de que el archivo `requirements.txt` esté en el mismo directorio donde se encuentra tu `Dockerfile`. La estructura de tu proyecto debería ser algo así:

   ```
   my-mapreduce-project/
   ├── Dockerfile
   └── requirements.txt
   ```

2. **Crea el archivo `requirements.txt`**:
   - Si no has creado el archivo `requirements.txt`, créalo con el siguiente contenido, que especifica el paquete `capnp` desde GitHub:

   ```plaintext
   git+https://github.com/capnproto/capnproto-python.git
   ```

   Puedes crear el archivo con un editor de texto, por ejemplo, usando `nano` en la terminal:

   ```bash
   nano requirements.txt
   ```

   Luego, pega el contenido mencionado anteriormente y guarda el archivo.

3. **Actualiza tu Dockerfile**:
   - Tu `Dockerfile` debería lucir así:

   ```Dockerfile
   FROM vhiveease/mapreduce-reducer

   # Copiar el archivo requirements.txt al contenedor
   COPY requirements.txt .

   RUN apt-get update && \
       apt-get install -y python3-pip git build-essential python3-dev && \
       pip3 install --upgrade pip && \
       pip3 install -r requirements.txt

   CMD ["python3", "./main.py"]
   ```

4. **Construye la imagen nuevamente**:
   - Una vez que el archivo `requirements.txt` esté en la ubicación correcta, vuelve a construir tu imagen:

   ```bash
   docker build -t my-mapreduce-reducer .
   ```

5. **Ejecuta el contenedor**:
   - Después de que la construcción sea exitosa, ejecuta tu contenedor:

   ```bash
   docker run --rm -it my-mapreduce-reducer
   ```
