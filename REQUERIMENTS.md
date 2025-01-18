
# Mini Manual: Instalación de ImageMagick

## En Linux (Ubuntu, Debian, CentOS, Fedora, etc.)

**Desde los repositorios:**

* **Ubuntu/Debian:**

    ```bash
    sudo apt install imagemagick
    ```

* **CentOS/Fedora:**

    ```bash
    sudo yum install ImageMagick
    ```

**Desde fuentes:**

1. **Descargar el código fuente:** Visita la página oficial de ImageMagick y descarga la versión correspondiente a tu sistema.
2. **Descomprimir y configurar:**

  ```bash
  tar -xzf ImageMagick-x.y.z.tar.gz
  cd ImageMagick-x.y.z
  ./configure
  ```

3. **Compilar e instalar:**

  ```bash
  sudo make
  sudo make install
  ```

## En macOS

**Usando Homebrew:**

```bash
brew install imagemagick
```

**Desde fuentes:**
Los pasos son similares a la instalación desde fuentes en Linux.

## En Windows

**Usando el instalador:**

1. **Descarga:** Obtén el instalador de la página oficial de ImageMagick.
2. **Ejecutar:** Ejecuta el instalador y sigue las instrucciones en pantalla.

**Usando Chocolatey (gestor de paquetes):**

1. **Instalar Chocolatey:** Si aún no lo tienes, sigue las instrucciones en [https://chocolatey.org/install](https://www.google.com/url?sa=E&source=gmail&q=https://chocolatey.org/install).
2. **Instalar ImageMagick:**

```powershell
choco install imagemagick
```

# Mini Manual: Abrir la Consola en Shell

## En Linux

* **Terminal:** Busca en el menú de aplicaciones la aplicación "Terminal".
* **Ctrl+Alt+T:** Esta combinación de teclas suele abrir directamente el terminal.

## En macOS

* **Terminal:** Busca en Launchpad o Spotlight la aplicación "Terminal".
* **⌘+Espacio:** Abre Spotlight y escribe "Terminal".

## En Windows

* **Símbolo del sistema:** Busca en el menú de Inicio "Símbolo del sistema".
* **PowerShell:** Busca en el menú de Inicio "PowerShell".
* **Windows Terminal:** (Disponible a partir de Windows 10) Busca en el menú de Inicio "Windows Terminal".

**Ejemplo básico de uso de ImageMagick en la consola:**

```bash
convert imagen.jpg -resize 50% imagen_resized.jpg
```

Este comando redimensiona la imagen "imagen.jpg" al 50% de su tamaño original y guarda el resultado como "imagen\_resized.jpg".

**Para más información y opciones:**

* **Documentación oficial:** [https://imagemagick.org/script/index.php](https://www.google.com/url?sa=E&source=gmail&q=https://imagemagick.org/script/index.php)
* **Manuales en línea:** Existen numerosos tutoriales y manuales detallados sobre ImageMagick disponibles en línea.
