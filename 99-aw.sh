#!/usr/bin/env bash
#requirements : screen
cd ../../opt/activitywatch/aw-watcher-afk
screen -S aw-watcher-afk
./aw-watcher-afk
exit
cd ../aw-watcher-window
screen -S aw-watcher-window
./aw-watcher-window
exit
