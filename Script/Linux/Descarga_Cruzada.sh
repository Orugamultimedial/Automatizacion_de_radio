! /bin/bash

## Script para descargar "Cruzada" ##
## Válido 2018 ##
ls
#Borra y vuelve a crearel directorio "Cruzada"
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Cruzada
rm *.mp3

#Descarga los archivos
#2018
wget http://luispalau.net/archivosradiofinal/zipBiblia.zip

#Descomprime todos los archivos
unzip zipBiblia.zip ;

#Lista los archivos
ls

#Borra todos los archivos que tengan más de 7 días de antigüedad
#find /home/user/backups/backup* -mtime +7 -exec rm {} \;

#Extrae todos los archivos de los subdirectorios y los ubica en "Cruzada"
find /mnt/c/Users/fmgil/Documents/Radio/Programas/Cruzada/ -type f -name *.mp3 -exec mv {} /mnt/c/Users/fmgil/Documents/Radio/Programas/Cruzada/ \;

#Se ubica en el directorio
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Cruzada/

#Borra el subdirectorio "Cruzada"
rm -r Biblia
rm zipBiblia.zip

exit



