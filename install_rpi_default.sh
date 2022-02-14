sudo apt update
sudo apt install -y htop net-tools iperf tmux byobu kdiff3 python3-pip putty neofetch tilix ibus ibus-hangul fonts-nanum exfat-fuse zip unzip hdparm etherwake

sudo apt install -y ./ulauncher_5.14.3_all.deb

chmod +x ./install-zsh.sh
./install-zsh.sh

pip3 install wpm
pip3 install -U pyvisa
pip3 install pyvisa-py

chmod +x ipadd
chmod +x ipdel
chmod +x wol

cp ./ipadd ~/.local/bin
cp ./ipdel ~/.local/bin
cp ./wol   ~/.local/bin

# Swap change
sudo dphys-swapfile swapoff
sudo vi /etc/dphys-swapfile
sudo dphys-swapfile setup
sudo dphys-swapfile swapon
