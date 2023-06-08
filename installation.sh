#!/usr/bin/env bash
#use source to run the program, otherwise the export won't stay in the terminal (check for bashrc file to make it permanent) 
echo "Installation of ActivityWatch"
git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo "Checking dependencies"
python3 -V
export PATH="$HOME/.local/bin:$PATH"
curl -sSL https://install.python-poetry.org |python3 - #download poetry
poetry -V
sudo apt -y install nodejs
node -v
sudo apt -y install npm
npm -v
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-venv
