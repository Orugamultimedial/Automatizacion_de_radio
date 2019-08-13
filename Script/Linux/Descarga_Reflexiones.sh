#!/bin/bash

cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Reflexiones/
#Reflexiones
rm *.mp3

Mes=`date +%b`;
MesNUM=`date +%m`;
Ano=`date +%y`;

#if [ ene = $Mes] ; then
# MesENG=jan

#elif [ feb = $Mes ] ; then
# MesENG=feb

#elif [ mar = $Mes ] ; then
# MesENG=mar

#elif [ abr = $Mes ] ; then
# MesENG=apr

#elif [ may = $Mes ] ; then
# MesENG=may

#elif [ jun = $Mes ] ; then
# MesENG=jun

#elif [ jul = $Mes ] ; then
# MesENG=jul

#elif [ ago = $Mes ] ; then
# MesENG=aug

#elif [ sep = $Mes ] ; then
# MesENG=sep

#elif [ oct = $Mes ] ; then
# MesENG=oct

#elif [ nov = $Mes ] ; then
# MesENG=nov

#elif [ dic = $Mes ] ; then
# MesENG=dec

#fi

#Descarga
wget http://www.westarprogramsonline.com/reflexion/mp3/ref-$Mes$Ano.zip

#Descomprime
#unzip *.zip -d /mnt/c/fmgil/Documents/Radio/Programas/Reflexiones/

#rm *.zip *.pdf
exit

