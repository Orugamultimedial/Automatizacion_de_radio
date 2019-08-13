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

date +"%B" > Mes.txt
date +"%Y" > Ano.txt
date +"%m" > MesNumero.txt
Mes=`cat Mes.txt`
MesNumero=`cat MesNumero.txt`
Ano=`cat Ano.txt`

if [ January = $Mes] ; then
 MesENG=January_

elif [ February = $Mes ] ; then
 MesENG=February_

elif [ March = $Mes ] ; then
 MesENG=March_

elif [ April = $Mes ] ; then
 MesENG=April_

elif [ May = $Mes ] ; then
 MesENG=May_

elif [ Jun = $Mes ] ; then
 MesENG=June_

elif [ Jul = $Mes ] ; then
 MesENG=July_

elif [ Agosto = $Mes ] ; then
 MesENG=August_

elif [ September = $Mes ] ; then
 MesENG=September_

elif [ October = $Mes ] ; then
 MesENG=October_

elif [ November = $Mes ] ; then
 MesENG=November_

elif [ December = $Mes ] ; then
 MesENG=December_

fi

wget --user fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/$MesENG$Ano.zip

#Descomprime todos los archivos
#unzip $MesENG$Ano.zip
unzip -l $MesENG$Ano.zip
unzip -j $MesENG$Ano.zip "*.mp3" -d .
#Lista los archivos


#Extrae todos los archivos de los subdirectorios
find /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ -type f -name *.mp3 -exec mv {} /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ \;

rm *.zip
rm *.txt
#rm -r Cultura_Financiera

exit