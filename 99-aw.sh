#!/bin/bash
#installation : etc/profile.d
if [ -d "/opt/activitywatch" ] 
then
  echo "ActivityWatch installed : starting watchers"
  cd ../../opt/activitywatch/aw-watcher-afk
  ./aw-watcher-afk&
  cd ../aw-watcher-window
  ./aw-watcher-window&
else
  echo "Error : ActivityWatch not installed"
fi
#Vérifier si aw est présent sur la machine
