#!/usr/bin/env bash
echo -e "------------------\Installation of ActivityWatch\------------------"
git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo -e "------------------\Installing dependencies\------------------"
export PATH="$HOME/.local/bin:$PATH"
curl -sSL https://install.python-poetry.org |python3 - #download poetry
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt-get -y install python3-pip
python3 -m pip install --user virtualenv
