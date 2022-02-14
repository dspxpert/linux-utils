sudo apt update

sudo usermod -aG docker $USER
sudo usermod -aG dialout $USER

# Setup fonts
mkdir -p ~/.fonts
cp fonts/* ~/.fonts
sudo fc-cache -fv

# Setup Pictures
cp pictures/* ~/Pictures

# Install recommanded apps
sudo apt install -y htop net-tools iperf tmux byobu kdiff3 python3-pip putty neofetch tilix ibus ibus-hangul fonts-nanum exfat-fuse zip unzip hdparm etherwake
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.14.3/ulauncher_5.14.3_all.deb
sudo apt install -y ./ulauncher_5.14.3_all.deb

# Setup zsh & powerlevel10k
chmod +x ./install_zsh.sh
./install_zsh.sh

# Install Python packages
pip3 install wpm
pip3 install -U pyvisa
pip3 install pyvisa-py

# Setup utils
cp ./ipadd ~/.local/bin
cp ./ipdel ~/.local/bin
cp ./wol   ~/.local/bin
chmod +x ~/.local/bin/ipadd
chmod +x ~/.local/bin/ipdel
chmod +x ~/.local/bin/wol


# Swap Change
sudo dphys-swapfile swapoff
sudo vi /etc/dphys-swapfile
sudo dphys-swapfile setup
sudo dphys-swapfile swapon
