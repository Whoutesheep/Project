#!/bin/bash
#chown root:root setup_aw.sh
#chmod 4755 setup_aw.sh
export PATH="$HOME/.local/bin:$PATH"
export PATH="/root/.local/bin:$PATH"
cd ../../opt
touch test.txt
sudo git clone https://github.com/Whoutesheep/project.git
cd project/
chown root:root main_aw.sh
chmod 4755 main_aw.sh
source main_aw.sh
