#!/bin/bash

##########################################
#
# description : déploiement à la volée de conteneur docker
#
# Auteur : Damtoti
#
# Date : 05/02/2022 https://github.com/damtoti2020/tuto-script-bash.git
#
##########################################

# choix de --create
if [ "$1" == "--create" ];then
  echo ""
  echo " l'option que vous avez choisi est --create"
  echo ""
  
  # definition du nombres de conteneur
  nbr_machine=1
  [ "$2" != "" ] && nbr_machine=$2
  
  # autre methode de pour la boocle for
  
  # creation des conteurs 
  echo "debut de la creation des onteneur"
  for i in $(seq 1 $nbr_machine);do
   docker run -tid --name $USER-alpine$i  alpine:latest
   echo "Fin de la suppression"
  done
  
  echo "jai cree" ${nbr_machine}
  
  
# choix de --drop

elif [ "$1" == "--drop" ];then
  echo ""
  echo " l'option que vous avez choisi est --drop"
  echo ""
  docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')
  
  
# choix de --info

elif [ "$1" == "--drop" ];then
  echo ""
  echo " l'option que vous avez choisi est --drop"
  echo ""
# choix de --start

elif [ "$1" == "--start" ];then
  echo ""
  echo " l'option que vous avez choisi est --start"
  echo ""
# choix de --ansible

elif [ "$1" == "--ansible" ];then
  echo ""
  echo " l'option que vous avez choisi est --ansible"
  echo ""

else
echo "

Option: 
     - --create : lancer des conteneurs
     - --drop : supprimer des conteneurs
     - --infos : caracteristiques des conteneurs 
     - --start : redémarrage des conteneurs
     - --ansible : deploiement arborescence ansible
"
fi
