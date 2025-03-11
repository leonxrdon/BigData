# Usa una imagen base con OpenJDK
FROM openjdk:8-jdk-alpine

# Usa una imagen base con OpenJDK
FROM openjdk:8-jdk-alpine

ENV PIG_VERSION=0.17.0

RUN apk add --no-cache bash curl && \
    curl -o /tmp/pig-$PIG_VERSION.tar.gz https://downloads.apache.org/pig/pig-$PIG_VERSION/pig-$PIG_VERSION.tar.gz && \
    tar -xvf /tmp/pig-$PIG_VERSION.tar.gz -C /usr/local && \
    rm /tmp/pig-$PIG_VERSION.tar.gz && \
    ln -s /usr/local/pig-$PIG_VERSION /usr/local/pig

ENV PATH=$PATH:/usr/local/pig/bin

# Copia los scripts y el archivo CSV al contenedor
COPY scripts /scripts

CMD ["pig", "-x", "local", "/scripts/script.pig"]
