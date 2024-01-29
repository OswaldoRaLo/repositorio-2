FROM python:alpine

COPY conexion.py /app/conexion.py

RUN pip install mysql-connector-python

WORKDIR /app

CMD ["python", "conexion.py"]


