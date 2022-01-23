#!/bin/sh
#DESCRIÇÃO: EXTRAI ARQUIVOS

ARQ=$1
FMT=${ARQ##*.}

#echo $FMT
#echo $ARQ

if [ -e "$ARQ" ]
then
   case $FMT in
      "tar" | "gz" | "tgz")
         tar -xf $1
      ;;
      "zip")
         unzip $1
      ;;
      "7z")
         7z x $1
      ;;
      *)
         echo "Erro!"
      ;;
   esac
fi
