#!/usr/bin/env bash
echo -e "------------------------------------\------------------Installing dependencies------------------\------------------------------------"
export PATH="$HOME/.local/bin:$PATH"
curl -sSL https://install.python-poetry.org |python3 - 
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt-get -y install python3-pip
python3 -m pip install --user virtualenv
echo -e "------------------------------------\------------------Venv install------------------\------------------------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
echo -e "------------------------------------\------------------Venv launch------------------\------------------------------------"
python3 -m venv venv_aw
source ./venv_aw/bin/activate
echo -e "------------------------------------\------------------Installation of ActivityWatch------------------\------------------------------------"
git clone --recursive https://github.com/ActivityWatch/activitywatch.git
