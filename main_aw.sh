#!/usr/bin/env bash
#export PATH="root/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
export PATH="$HOME/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
export PATH="$HOME/project/venv_aw/bin:$PATH"
echo "------------------------------------\------------------Installing dependencies------------------/------------------------------------"
#sudo curl -sSL https://install.python-poetry.org |python3 - 
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt-get -y install python3-pip
sudo python3 -m pip install --user --upgrade pip
sudo python3 -m pip install --user poetry
echo "------------------------------------\------------------Venv install------------------/------------------------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
echo "------------------------------------\------------------Venv launch------------------/------------------------------------"
sudo python3 -m venv venv_aw
source ./venv_aw/bin/activate
echo "------------------------------------\------------------Installation of ActivityWatch------------------/------------------------------------"
git clone --recursive https://github.com/ActivityWatch/activitywatch.git
#cd activitywatch
#sudo make build
