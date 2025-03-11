# ¿Qué es Hadoop?

![image](https://github.com/user-attachments/assets/3718e84c-d2f9-437d-b658-9715a23cd3e7)

## ¿Qué es Hadoop?
Apache Hadoop es un framework de código abierto que permite trabajar con grandes cantidades de datos de manera eficiente.
Utiliza modelos sencillos de programación para el almacenar y procesar datos de forma distribuida en múltiples clústeres de ordenadores.

## ¿Cómo funciona?
Imaginemos que tienes un gran volumen de información, archivos como videos, fotos o registros, que son difíciles de manejar en un solo ordenador. Hadoop facilita que esta información se divida y se almacene en muchos ordenadores al mismo tiempo, formando un grupo llamado clúster.
Esto significa que puedes trabajar con datos muy grandes, desde miles hasta millones de gigabytes, incluso petabytes (1 petabyte equivale a 1 millón de gigabytes), de una manera rápida y eficiente. ​
Además, si necesitas más capacidad, puedes simplemente añadir más ordenadores al clúster, haciendo que sea fácil el escalado, lo que permite escalar tu proyecto fácilmente y adaptarlo a tus necesidades.

## ¿Para qué se usa?
Se utiliza para el procesamiento de datos masivos, análisis en tiempo real, almacenamiento de datos no estructurados y como base para aplicaciones de machine learning y big data.

## Ventajas

- 🟢 **Escalabilidad**: Permite añadir fácilmente más nodos al clúster para gestionar mayores volúmenes de datos.
- 💰 **Bajo Coste**: Utiliza hardware estándar, lo que reduce significativamente los costos de implementación.
- 🔄 **Flexibilidad**: Soporta múltiples formatos de datos, tanto estructurados como no estructurados.
- 🛡️ **Resistencia**: Garantiza la tolerancia a fallos mediante la replicación de datos en varios nodos.

## En este repo te presentamos los siguientes ecosistemas
- Hadoop
- HDFS
- HBase
- YARN
- Apache Pig
- Apache Hive
- Oozie
- Zookeeper

# Ecosistemas Apache Hadoop
![image](https://github.com/user-attachments/assets/f3ff0238-7b8e-4811-a66e-174db9802e0e)

## HDFS
- **Tipo de Sistema de Almacenamiento:** Sistema de archivos distribuido diseñado para almacenar grandes volúmenes de datos de manera eficiente en clústeres de servidores.
- **Procesamiento de Datos a gran escala:** Proporciona acceso secuencial y operaciones de lectura/escritura a gran escala.
- **Escalabilidad:** Diseñado para escalar horizontalmente, permitiendo añadir más nodos al clúster para aumentar la capacidad.
- **Estructura de Archivos:** Organizado en un sistema jerárquico, donde los datos se dividen en bloques y se distribuyen entre nodos.
- **Alta disponibilidad:** Cada bloque de datos es replicado en varios nodos para asegurar disponibilidad y tolerancia a fallos en caso de pérdida de algún nodo.

## HBase
- **Tipo de Base de Datos:** HBase es un sistema de gestión de bases de datos no relacionales y orientado a columnas.
- **Procesamiento en Tiempo Real:** Muy adecuado para el procesamiento de datos en tiempo real y acceso aleatorio de lectura/escritura a grandes volúmenes de datos.
- **Escalabilidad:** Diseñado para escalar linealmente, adaptándose al crecimiento de los datos.
- **Estructura de Tablas:** Comprende un conjunto de tablas con filas y columnas, similar a bases de datos tradicionales.
- **Clave Principal:** Cada tabla debe tener un elemento definido como clave principal; todas las operaciones de acceso deben utilizar esta clave.

## Map Reduce
- **Fases Principales:**
  - **Map:** Transforma datos de entrada en pares clave-valor.
  - **Shuffle and Sort:** Agrupa y ordena los pares clave-valor obtenidos con la función Map.
  - **Reduce:** Reduce los pares clave-valor asociados en claves únicas, es decir, en un solo resultado.
- **Almacenamiento Distribuido:** Utiliza HDFS (Hadoop Distributed File System) como sistema de archivos distribuido para almacenar datos de entrada y salida.
- **Paralelización:** Permite la ejecución simultánea de múltiples tareas, mejorando la eficiencia del procesamiento.
- **Tolerancia a Fallos:** Capacidad para recuperarse de fallos en nodos, asegurando la continuidad del procesamiento.
- **Flexibilidad:** Adecuado para una variedad de aplicaciones, como análisis de datos, minería de datos y procesamiento de logs.
- **Limitaciones:** No todos los problemas son aptos para MapReduce; es más efectivo para tareas que pueden ser paralelizadas.

## YARN
- **Resource Manager:** Asigna recursos del clúster a las aplicaciones basándose en su carga de trabajo.
- **Node Manager:** Está presente en cada nodo y proporciona a las aplicaciones los recursos que indica el Resource Manager en contenedores.
- **Application Master:** Trabaja con el Resource Manager para asignar recursos, los monitoriza y coordina la ejecución de todas las tareas de una aplicación.

## Apache Pig
- **Lenguaje de alto nivel:** Diseñado para facilitar el análisis de grandes conjuntos de datos en Hadoop.
- **Pig Latin:** Utiliza un lenguaje específico llamado Pig Latin, que es más fácil de escribir y entender que MapReduce.
- **Abstracción de MapReduce:** Traduce automáticamente el código de Pig Latin a tareas de MapReduce, simplificando el proceso.
- **Flexibilidad:** Permite la manipulación de datos de manera flexible, con operaciones como filtrado, agrupamiento y uniones.
- **Integración con Hadoop:** Se integra de manera nativa con el ecosistema de Hadoop, aprovechando su capacidad de almacenamiento y procesamiento.


## Apache Hive
- **Herramienta de Data Warehousing:** Permite consultar y analizar grandes volúmenes de datos usando HiveQL.
- **Consultas SQL:** Hive permite a los usuarios escribir consultas SQL para manipular y analizar datos almacenados en HDFS.
- **Almacenamiento y Procesamiento:** Diseñado para almacenar y procesar grandes volúmenes de datos estructurados.
- **Transformación de Datos:** Los datos pueden ser transformados y procesados eficientemente.

## Oozie
- **Sistema de Programación de Flujo de Trabajo:** Oozie es un sistema para administrar trabajos de Apache Hadoop.
- **Gráficos Acíclicos Dirigidos (DAG):** Los trabajos de flujo de trabajo de Oozie son gráficos acíclicos dirigidos que representan acciones.
- **Definición y Ejecución de Flujos de Trabajo:** Proporciona un sistema para definir y ejecutar flujos de trabajo que involucran diversas acciones, como tareas de MapReduce, acciones de Pig, Hive o Spark, entre otras.
- **Uso de XML:** Oozie se basa en el lenguaje XML para definir los flujos de trabajo y utiliza un coordinador para programar y ejecutar estas tareas en el clúster de Hadoop.

## Apache Zookeeper
- **Coordinación de Servicios Distribuidos:** Ideal para coordinar nodos en un entorno distribuido, asegurando la consistencia y sincronización de los datos entre ellos.
- **Escalabilidad:** Permite expansión horizontal, manejando grandes cantidades de solicitudes y manteniendo el rendimiento en clústeres de gran tamaño.
- **Estructura Jerárquica:** Los datos se organizan en una estructura de nodos jerárquica, similar a un sistema de archivos (conocido como "znodes"), donde estos almacenan datos y estado.
- **Alta Disponibilidad y Tolerancia a Fallos:** La replicación de datos en múltiples servidores asegura que el servicio mantenga la disponibilidad y sea tolerante a fallos, incluso si un nodo falla.

# Conclusión
Hadoop representa una revolución en la forma en que manejamos y procesamos grandes volúmenes de datos. Su arquitectura distribuida permite no solo el almacenamiento eficiente de información, sino también el procesamiento paralelo, lo que acelera el análisis y la obtención de insights valiosos. Con componentes clave como HDFS para el almacenamiento, YARN para la gestión de recursos, y herramientas como Apache Pig y Hive para el análisis de datos, Hadoop se convierte en una solución integral para empresas de todos los tamaños.

Además, la escalabilidad, el bajo costo de implementación y la flexibilidad de trabajar con diversos formatos de datos son características que lo destacan en el ecosistema de Big Data. En este repositorio, te presentamos una visión general de los ecosistemas relacionados con Hadoop, con la esperanza de que te sirva como punto de partida para explorar y aprovechar al máximo las capacidades de esta potente plataforma. Con el conocimiento adecuado y las herramientas correctas, podrás transformar tus datos en decisiones informadas y estratégicas.

