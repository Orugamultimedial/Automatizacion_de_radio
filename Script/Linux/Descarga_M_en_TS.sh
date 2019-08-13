#!/bin/bash

#Borra el contenido del directorio  Momentos_en_tierra_Santa
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Momentos_en_tierra_Santa/
rm *.mp3

#Crea un subdirectorio llamado tambien Momentos_en_tierra_Santa
#mkdir Momentos_en_tierra_Santa

#Se ubica en el directorio
#cd  /mnt/c/Users/fmgil/Documents/Radio/Programas/Momentos_en_tierra_Santa/Momentos_en_tierra_Santa/

#Descarga los archivos
#2018
date +"%B" > .Mes.txt
date +"%y" > .Ano.txt
date +"%m" > .MesNumero.txt
Mes=`cat .Mes.txt`
MesNumero=`cat .MesNumero.txt`
Ano=`cat .Ano.txt`

if [ January = $Mes] ; then
 MesENG=ene

elif [ February = $Mes ] ; then
 MesENG=feb

elif [ March = $Mes ] ; then
 MesENG=mar

elif [ April = $Mes ] ; then
 MesENG=abr

elif [ May = $Mes ] ; then
 MesENG=may

elif [ June = $Mes ] ; then
 MesENG=jun

elif [ July = $Mes ] ; then
 MesENG=jul

elif [ August = $Mes ] ; then
 MesENG=ago

elif [ September = $Mes ] ; then
 MesENG=sep

elif [ October = $Mes ] ; then
 MesENG=oct

elif [ November = $Mes ] ; then
 MesENG=nov

elif [ December = $Mes ] ; then
 MesENG=dic

fi


rm *.mp3
#Momentos en Tierra Santa
wget --user momentos --password momentos http://www.westarprogramsonline.com/momentos/mp3/mts-$MesENG$Ano.zip

#Descomprime
unzip mts-$MesENG$Ano.zip 

rm *.zip *.pdf

exit
