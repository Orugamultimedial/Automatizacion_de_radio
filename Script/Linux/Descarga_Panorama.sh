#!/bin/bash
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama
date +"%d" > .Dia.txt
date +"%B" > .Mes.txt
date +"%Y" > .Ano.txt
date +"%m" > .MesNumero.txt
Mes=`cat .Mes.txt`
MesNumero=`cat .MesNumero.txt`
Dia=`cat .Dia.txt`
Ano=`cat .Ano.txt`
Manana="a.mp3"
Tarde="b.mp3"
URL="https://radioteca.net/media/uploads/audios/"
Slash="/"

if [ January = $Mes] ; then
 MesENG=enero

elif [ February = $Mes ] ; then
 MesENG=febrero

elif [ March = $Mes ] ; then
 MesENG=marzo

elif [ April = $Mes ] ; then
 MesENG=abril

elif [ May = $Mes ] ; then
 MesENG=mayo

elif [ June = $Mes ] ; then
 MesENG=junio

elif [ July = $Mes ] ; then
 MesENG=julio

elif [ August = $Mes ] ; then
 MesENG=agosto

elif [ September = $Mes ] ; then
 MesENG=septiembre
 MesENG2=setiembre

elif [ October = $Mes ] ; then
 MesENG=octubre

elif [ November = $Mes ] ; then
 MesENG=noviembre

elif [ December = $Mes ] ; then
 MesENG=diciembre

fi

cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama/Panorama1
rm *.mp3
wget $URL$Ano$Slash$MesNumero$Slash$MesENG$Dia$Manana 
wget $URL$Ano$Slash$MesNumero$Slash$MesENG2$Dia$Manana
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama/Panorama2
rm *.mp3
wget $URL$Ano$Slash$MesNumero$Slash$MesENG$Dia$Tarde
wget $URL$Ano$Slash$MesNumero$Slash$MesENG2$Dia$Tarde

exit
