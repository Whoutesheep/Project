#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.TEST:$PATH"
cd ../../opt
sudo touch test.txt
sudo git clone https://github.com/Whoutesheep/project.git
