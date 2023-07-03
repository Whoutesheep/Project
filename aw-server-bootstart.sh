#!/bin/bash
#opt/aw-server-bootstart.sh sur la mahoine serveur
if [ -d "/opt/aw-server" ] 
then
  echo "aw-server installed : starting server"
  cd ../../opt/aw-server
  ./aw-server
else
  echo "Error : ActivityWatch not installed"
fi
