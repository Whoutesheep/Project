echo -e "------------------\Venv install\------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
python3 -m venv venv_aw
source ./venv_aw/bin/activate
