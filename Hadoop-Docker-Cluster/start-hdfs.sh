#!/bin/bash

# Formatear el NameNode si es necesario
if [ ! -d "/hadoop/dfs/name/current" ]; then
    echo "Formateando el NameNode..."
    hdfs namenode -format
fi

# Iniciar el NameNode
hdfs namenode
