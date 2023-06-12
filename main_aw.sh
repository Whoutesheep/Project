#!/usr/bin/env bash
#export PATH="root/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
export PATH="$HOME/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
echo "------------------------------------\------------------Installation of ActivityWatch------------------/------------------------------------"
sudo git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo "------------------------------------\------------------Installing dependencies------------------/------------------------------------"
sudo curl -sSL https://install.python-poetry.org |python3 - 
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt-get -y install python3-pip
python3 -m pip install virtualenv
echo "------------------------------------\------------------Venv install------------------/------------------------------------"
sudo python3 -m pip install --user virtualenv #--user le dl dans root --> je ne peut pas y acceder avec mes doits
sudo apt-get -y install python3-venv
echo "------------------------------------\------------------Venv launch------------------/------------------------------------"
sudo python3 -m venv venv_aw
source ./venv_aw/bin/activate
cd activitywatch
sudo make build
