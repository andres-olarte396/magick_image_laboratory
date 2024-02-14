#!/bin/bash

# Verificar si se proporciona un archivo de imagen como argumento
if [ -z "$1" ]; then
  echo "Por favor, proporciona el nombre del archivo de imagen como argumento."
  # Esperar entrada del usuario antes de salir
  read -p "Presiona Enter para salir."
  exit 1
fi

# Nombre del archivo de imagen de entrada
input_image="$1"

# Verificar si el archivo de imagen existe
if [ ! -f "$input_image" ]; then
  echo "El archivo de imagen '$input_image' no existe."
  # Esperar entrada del usuario antes de salir
  read -p "Presiona Enter para salir."
  exit 1
fi

# Directorio de salida para los iconos
output_directory="output_icons"
mkdir -p "$output_directory"

# Tamaños comunes para iconos
sizes=(16 32 48 64 128)

# Convertir la imagen a formato .ico con diferentes tamaños
for size in "${sizes[@]}"; do
  output_icon="${output_directory}/${input_image%.*}_${size}.ico"
  magick "$input_image" -resize "${size}x${size}" "$output_icon"
done

echo "La conversión se ha completado. Los iconos se encuentran en el directorio '$output_directory'."

# Esperar entrada del usuario antes de salir
read -p "Presiona Enter para salir."