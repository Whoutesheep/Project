#!/usr/bin/env bash
echo "Installation of ActivityWatch"
#git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo "Checking dependencies"
python3 -V
curl -sSL https://install.python-poetry.org |python3 - #download poetry
poetry -V
sudo apt install nodejs
node -V 
sudo apt install npm
npm -V
sudo apt-get install python3-venv
