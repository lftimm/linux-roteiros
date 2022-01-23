#!/bin/sh
#DESCRIÇÃO: DESLIGA OU REINICIA O SISTEMA

ICON1=
ICON2=

SEL=$(echo "$ICON1 Desligar\n$ICON2 Reiniciar" | dmenu -p "Selecione "  -sb "#800000")

case $SEL in

  "$ICON1 Desligar")
    ESC=$(echo "Sim\nNão" | dmenu -p "Tem certeza?" -sb "#800000")
    if [ $ESC = "Sim" ]
    then 
      sudo poweroff
    else 
      break
    fi
  ;;
  
  "$ICON2 Reiniciar")
    ESC=$(echo "Sim\nNão" | dmenu -p "Tem certeza?" -sb "#800000")
    if [ $ESC = "Sim" ]
    then 
      sudo reboot
    else 
      break
    fi
  ;;

esac
