sudo apt update

sudo usermod -aG docker $USER
sudo usermod -aG dialout $USER

# Setup fonts
mkdir -p ~/.fonts
cp fonts/* ~/.fonts
sudo fc-cache -fv

# Setup Pictures
mkdir -p ~/Pictures
cp pictures/* ~/Pictures

# Setup scripts to ~/.local/bin
mkdir -p ~/.local/bin
chmod +x ./scripts/*
cp ./scripts/* ~/.local/bin

# Install recommanded apps
sudo apt install -y htop net-tools iperf tmux byobu kdiff3 python3-pip putty neofetch tilix ibus ibus-hangul fonts-nanum exfat-fuse zip unzip hdparm etherwake
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.14.3/ulauncher_5.14.3_all.deb
sudo apt install -y ./ulauncher_5.14.3_all.deb

# Setup zsh & powerlevel10k
chmod +x ./install_zsh.sh
./install_zsh.sh

# Install Python packages
pip3 install wpm
pip3 install bpytop
pip3 install -U pyvisa
pip3 install pyvisa-py

# Swap Change
sudo dphys-swapfile swapoff
sudo vi /etc/dphys-swapfile
sudo dphys-swapfile setup
sudo dphys-swapfile swapon
