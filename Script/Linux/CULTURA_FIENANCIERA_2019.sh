#! /bin/bash

## Script para descargar "Cultura Financiera" ##
## Válido 2018 ##

#Borra el contenido del directorio "Cultura_Financiera"
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/
rm *.mp3

#Crea un subdirectorio llamado tambien "Cultura_Financiera"
#mkdir Cultura_Financiera

#Se ubica en el directorio
#cd  /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/Cultura_Financiera/

#Descarga los archivos


wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/Agosto_2019.zip
wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/Septiembre_2019.zip
wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/Octubre_2019.zip
wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/Noviembre_2019.zip
wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/Diciembre_2019.zip

#Descomprime todos los archivos
#unzip $MesENG$Ano.zip
unzip -l Agosto_2019.zip
unzip -j Agosto_2019.zip "*.mp3" -d .

unzip -l Septiembre_2019.zip
unzip -j Septiembre_2019.zip "*.mp3" -d .

unzip -l Octubre_2019.zip
unzip -j Octubre_2019.zip "*.mp3" -d .

unzip -l Noviembre_2019.zip
unzip -j Noviembre_2019.zip "*.mp3" -d .

unzip -l Diciembre_2019.zip
unzip -j Diciembre_2019.zip "*.mp3" -d .

#Lista los archivos


#Extrae todos los archivos de los subdirectorios
find /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ -type f -name *.mp3 -exec mv {} /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ \;

rm *.zip
rm *.txt
#rm -r Cultura_Financiera

exit