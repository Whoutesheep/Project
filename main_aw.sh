#!/usr/bin/env bash
export PATH="$HOME/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
cd ../activitywatch_klaim
echo "------------------------------------\------------------Update / Upgrade------------------/------------------------------------"
sudo apt-get update
sudo apt-get -y upgrade
echo "------------------------------------\------------------Installing pip------------------/------------------------------------"
sudo apt-get -y install python3-pip
sudo python3 -m pip install --user --upgrade pip
echo "------------------------------------\------------------Venv install------------------/------------------------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
echo "------------------------------------\------------------Venv launch------------------/------------------------------------"
sudo python3 -m venv venv_aw
sudo chmod -R 777 venv_aw
source ./venv_aw/bin/activate
echo "------------------------------------\------------------Installing dependencies------------------/------------------------------------"
sudo curl -sSL https://install.python-poetry.org |python3 - 
echo "------------------------------------\------------------Installing nodejs------------------/------------------------------------"
#sudo apt -y install nodejs
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=19
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs -y
echo "------------------------------------\------------------Installing npm & python3------------------/------------------------------------"
sudo apt -y install npm
sudo apt -y install python3
echo "------------------------------------\------------------ActivityWatch building------------------/------------------------------------"
make build
make package
