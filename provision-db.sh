#!/bin/bash
sudo apt update -y
sudo apt install -y postgresql postgresql-contrib

# Crear base de datos y usuario
sudo -i -u postgres psql -c "CREATE DATABASE mi_base;"
sudo -i -u postgres psql -c "CREATE USER joseph WITH ENCRYPTED PASSWORD '1234';"
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE mi_base TO joseph;"

# Crear tabla y datos de ejemplo
sudo -i -u postgres psql -d mi_base -c "CREATE TABLE personas (id SERIAL PRIMARY KEY, nombre VARCHAR(50));"
sudo -i -u postgres psql -d mi_base -c "INSERT INTO personas (nombre) VALUES ('Joseph'), ('Maria'), ('Carlos');"

