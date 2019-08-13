#!/bin/bash

cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Principios_para_vivir/

#Borra el contenido del directorio "Cultura_Financiera"
rm *.mp3 *.zip

#Crea un subdirectorio llamado tambien "Cultura_Financiera"
mkdir Principios_para_vivir

#Se ubica en el directorio
cd  /mnt/c/Users/fmgil/Documents/Radio/Programas/Principios_para_vivir/Principios_para_vivir/


Mes=`date +%b`;
MesNUM=`date +%m`;
Ano=`date +%y`;

#Descarga los archivosx
wget --user u45710788-principios --password principios "http://www.westarprogramsonline.com/principiosparavivir/mp3/ppv-$Mes$Ano.zip"

#Descomprime todos los archivos
unzip ppv-$Mes$Ano.zip ;

#Lista los archivos
ls

##Extrae todos los archivos de los subdirectorios y los ubica en "Principios_para_vivir"
find /mnt/c/Users/fmgil/Documents/Radio/Programas/Principios_para_vivir/ -type f -name *.mp3 -exec mv {} /mnt/c/Users/fmgil/Documents/Radio/Programas/Principios_para_vivir/ \;
#Se ubica en el directorio
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Principios_para_vivir/

#Borra el subdirectorio "Principios_para_vivir"
rm -r Principios_para_vivir

exit
