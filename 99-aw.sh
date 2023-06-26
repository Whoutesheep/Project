#!/usr/bin/env bash
#installation : etc/profile.d
#requirements : screen / aw d'installer
cd ../../opt/activitywatch/aw-watcher-afk
screen -S aw-watcher-afk
./aw-watcher-afk
exit
cd ../aw-watcher-window
screen -S aw-watcher-window
./aw-watcher-window
exit
