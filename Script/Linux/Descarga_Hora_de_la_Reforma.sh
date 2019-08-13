#! /bin/bash

## Script para descargar "Hora_de_la_reforma" ##
## Válido 2018 ##

#Borra el contenido del directorio "Hora_de_la_reforma"
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Hora_de_la_reforma/
rm *.mp3

#Descarga los archivos
#2018
date +"%B" > Mes.txt
date +"%Y" > Ano.txt
date +"%m" > MesNumero.txt
Mes=`cat Mes.txt`
MesNumero=`cat MesNumero.txt`
Ano=`cat Ano.txt`

if [ January = $Mes] ; then
 MesENG=Enero

elif [ February = $Mes ] ; then
 MesENG=Febrero

elif [ March = $Mes ] ; then
 MesENG=Marzo

elif [ April = $Mes ] ; then
 MesENG=Abril

elif [ May = $Mes ] ; then
 MesENG=Mayo

elif [ June = $Mes ] ; then
 MesENG=Junio

elif [ July = $Mes ] ; then
 MesENG=Julio

elif [ August = $Mes ] ; then
 MesENG=Agosto

elif [ September = $Mes ] ; then
 MesENG=Septiembre

elif [ October = $Mes ] ; then
 MesENG=Octubre

elif [ November = $Mes ] ; then
 MesENG=Noviembre

elif [ December = $Mes ] ; then
 MesENG=Diciembre

fi

Fin=_AS.zip

wget --user RADIO --password lv7821 http://ministerioreforma.com/downloads/radios/la_hora_de_la_reforma/$Ano/$MesNumero$MesEMG/LaHora_$MesENG$Fin

#Descomprime todos los archivos
#unzip $MesENG$Ano.zip
unzip -l *.zip
unzip -j *.zip "*.mp3" -d .
#Lista los archivos
ls

rm *.zip
rm *.txt

exit
