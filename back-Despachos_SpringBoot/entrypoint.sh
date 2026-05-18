#!/bin/sh

# Este script espera activamente a que MySQL esté disponible
# antes de iniciar el backend, evitando errores de conexión al arrancar

echo "Esperando MySQL en $DB_HOST:3306..."

# Bucle que intenta conectarse hasta que MySQL responda
until nc -z $DB_HOST 3306; do
  echo "MySQL no disponible aún, reintentando en 3 segundos..."
  sleep 3
done

echo "MySQL disponible. Iniciando backend de Despachos..."

java -jar app.jar
