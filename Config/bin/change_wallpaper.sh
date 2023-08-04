#!/bin/bash

# Cambia el fondo de pantalla a uno aleatorio que se encuentre en la carpeta  ~/Wallpapers
# En mi caso utilizo una tarea cron en /etc/cron.d/change_wallpaper que se ejecuta cada 15 minutos

export DISPLAY=:0.0 # Necesario para que feh no falle

# Codigo para conseguir un archivo aleatorio y cambiarlo al fondo de pantalla.
wallpaper=$(find ~/Wallpaper -type f | sort -R | head -n 1)
feh --bg-fill $wallpaper &> /dev/null
