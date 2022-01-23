#!/bin/sh
#DESCRIÇÃO: SCRIPT PARA ACESSAR DOCUMENTOS

DOC="$HOME/Documentos"
cd $DOC

while :
do
  ESCOLHA=$(echo " Sair\n ..\n$(find ./* -maxdepth 0)"| awk -F '/' '{print $NF}' | dmenu -p 'Escolha o documento ' -c -l 14)
  CASO=$(echo "$ESCOLHA" | awk -F '.' '{print $NF}')

  case $CASO in
    pdf)
      xdg-open $ESCOLHA
      break
    ;;

    tex)
      xdg-open $ESCOLHA
      break
    ;;

    md)
      pidof urxvtd && urxvtc -e vim $ESCOLHA
      break
    ;;

    ' Sair')
      break
    ;;

    '')
      cd ..
    ;;

    *)
      cd $ESCOLHA
    ;;

  esac 
done
