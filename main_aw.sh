#!/usr/bin/env bash
echo "------------------------------------\------------------Installing dependencies------------------/------------------------------------"
export PATH="$HOME/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
curl -sSL https://install.python-poetry.org |python3 - 
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt-get -y install python3-pip
python3 -m pip install --user virtualenv
echo "------------------------------------\------------------Venv install------------------/------------------------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
echo "------------------------------------\------------------Venv launch------------------/------------------------------------"
sudo python3 -m venv venv_aw
source ./venv_aw/bin/activate
echo "------------------------------------\------------------Installation of ActivityWatch------------------/------------------------------------"
sudo git clone --recursive https://github.com/ActivityWatch/activitywatch.git
