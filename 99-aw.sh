#!/bin/bash
#installation : etc/profile.d sur le client
if [ -d "/opt/activitywatch" ] 
then
  echo "ActivityWatch installed : starting watchers"
  cd ../../opt/activitywatch/aw-watcher-afk
  ./aw-watcher-afk&
  cd ../aw-watcher-window
  ./aw-watcher-window&
  cd ../aw-watcher-input
  ./aw-watcher-input&
else
  echo "Error : ActivityWatch not installed"
fi
#Vérifier si aw est présent sur la machine
