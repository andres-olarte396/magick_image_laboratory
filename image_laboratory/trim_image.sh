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

# Directorio de salida para la imagen recortada
output_directory="trimed"
mkdir -p "$output_directory"

# Nombre de la imagen de salida
output_image="${output_directory}/${input_image%.*}_trim.png"

# Realizar el trim de la imagen
magick "$input_image" -trim "$output_image"

echo "Se ha realizado un trim de la imagen '$input_image'. Imagen recortada guardada en '$output_image'."