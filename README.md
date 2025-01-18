# Herramientas de Manipulación de Imágenes

Este proyecto contiene scripts en Bash que utilizan ImageMagick para realizar diversas operaciones en imágenes, como la conversión a iconos, la eliminación de fondo y el recorte de imágenes.

## Requisitos

- Consola Shell
- [ImageMagick](https://imagemagick.org/script/download.php)

Para mas información remitirse a este [Manual](REQUERIMENTS.md)

## Uso

### Clonar el Repositorio

```bash
git clone https://github.com/developer-laoz396/magick_image_laboratory
cd /magick_image_laboratory
```

## Instrucciones de Ejecución

### main.sh

Esta opción es flexible y permite al usuario elegir qué tareas realizar.

```bash
./main.sh
```

### convert_to_icon.sh

Este script convierte una imagen a varios tamaños de iconos en formato .ico.

```bash
./convert_to_icon.sh <imagen>
```

Sustituye <imagen> con el nombre del archivo de imagen que deseas convertir.

### remove_background.sh

Este script elimina el fondo de una imagen.

```bash
./remove_background.sh <imagen> <color_fondo>
```

Sustituye <imagen> con el nombre del archivo de imagen y <color_fondo> con el color del fondo que deseas quitar (por ejemplo, "white", "black", "#RRGGBB", etc.).

### trim_image.sh

Este script realiza un recorte (trim) de una imagen eliminando los bordes vacíos.

```bash
./trim_image.sh <imagen>
```

Sustituye <imagen> con el nombre del archivo de imagen que deseas recortar.

El script generará una imagen recortada sin fondo en el directorio output_images.

## Contribuciones

Si encuentras problemas o tienes sugerencias de mejora, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT.
