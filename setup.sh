#!/usr/bin/env bash
echo "Installation of ActivityWatch"
#git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo "Checking dependencies"
python3 -V
export PATH="$HOME/.local/bin:$PATH"*
$PATH
echo "EXPORT PATH"
curl -sSL https://install.python-poetry.org |python3 - #download poetry
poetry -V
#sudo apt install nodejs
#node -v
#sudo apt install npm
#npm -v
#sudo apt-get install python3-venv
