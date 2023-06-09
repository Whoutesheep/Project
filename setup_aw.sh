#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"
export PATH="/root/.local/bin:$PATH"
cd ../../opt
touch test.txt
sudo git clone https://github.com/Whoutesheep/project.git
cd project/
source main_aw.sh
