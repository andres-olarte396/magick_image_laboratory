#!/bin/bash

# Directorio donde se encuentran las funciones
function_directory="/image_laboratory"

read -p "Ingrese el nombre de la imagen: " image

if [[ ! -f "$image" ]]; then
  echo "El archivo de imagen no existe."
  exit 1
fi

# Bucle principal para permitir múltiples opciones
while true; do
  echo "Seleccione una opción:"
  echo "1. Eliminar fondo: Elimina el fondo de una imagen."
  echo "2. Recortar imagen: Realiza un recorte (trim) de una imagen eliminando los bordes vacíos."
  echo "3. Convertir a icono: Convierte una imagen a varios tamaños de iconos en formato '.ico'."
  echo "4. Salir"
  read opcion

  case $opcion in
    1)
      read -p "Ingrese el color que desea eliminar del fondo: " baground_color

      if ! [[ "$color_fondo" =~ ^#[0-9a-fA-F]{6}$ ]]; then
        echo "El formato del color de fondo es inválido."
        exit 1
      fi

      $function_directory/remove_background.sh "$image" "$baground_color"
      ;;
    2)
      $function_directory/trim_image.sh "$image"
      ;;
    3)
      $function_directory/convert_to_icon.sh "$image"
      ;;
    4)
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac
done
done