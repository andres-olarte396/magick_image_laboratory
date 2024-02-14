#!/bin/bash

remove_background() {
    local input_image="$1"
    local output_directory="removed_bg"
    local output_image="${output_directory}/${input_image%.*}_xbg.png"
    local background_color="$2"

    # Verificar si el archivo de imagen existe
    if [ ! -f "$input_image" ]; then
        echo "Error: El archivo de imagen '$input_image' no existe."
        # Esperar entrada del usuario antes de salir
        read -p "Presiona Enter para salir."
        exit 1
    fi

    # Crear el directorio de salida si no existe
    mkdir -p "$output_directory"

    # Convertir la imagen y quitar el fondo
    magick "$input_image" -fuzz 12% -transparent "$background_color" "$output_image"

    if [ $? -eq 0 ]; then
        echo "El fondo de '$input_image' ha sido removido. Imagen guardada en '$output_image'."
    else
        echo "Error: No se pudo quitar el fondo de la imagen '$input_image'."
    fi
}

# Verificar si se proporcionan suficientes argumentos
if [ "$#" -lt 2 ]; then
    echo "Uso: $0 <imagen> <color_fondo>"
    # Esperar entrada del usuario antes de salir
    read -p "Presiona Enter para salir."
    exit 1
fi

# Llamar a la función remove_background con los argumentos proporcionados
remove_background "$1" "$2"