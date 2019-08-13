#! /bin/bash

## Script para descargar "Palau_Responde" ##
## Válido 2018 ##

#Borra y vuelve a crearel directorio "Palau_Responde"
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Palau_Responde/
rm *.mp3

#Descarga los archivos
#2018
wget http://luispalau.net/archivosradiofinal/zipResponde.zip

#Descomprime todos los archivos
unzip zipResponde.zip ;

#Lista los archivos
ls

#Extrae todos los archivos de los subdirectorios y los ubica en "Palau_Responde"
find /mnt/c/Users/fmgil/Documents/Radio/Programas/Palau_Responde/ -type f -name *.mp3 -exec mv {} /mnt/c/Users/fmgil/Documents/Radio/Programas/Palau_Responde/ \;

rm -r Responde
rm zipResponde.zip

exit
