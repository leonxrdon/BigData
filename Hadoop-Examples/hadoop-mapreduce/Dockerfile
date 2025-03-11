FROM vhiveease/mapreduce-reducer

# Copiar el archivo requirements.txt al contenedor
COPY requirements.txt .

RUN apt-get update && \
    apt-get install -y python3-pip git build-essential python3-dev && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

CMD ["python3", "./main.py"]