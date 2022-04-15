sudo apt update

sudo usermod -aG docker $USER
sudo usermod -aG dialout $USER

# Setup fonts
mkdir -p ~/.fonts
cp fonts/* ~/.fonts
sudo fc-cache -fv

# Setup Pictures
#mkdir -p ~/Pictures
cp pictures/* ~/Pictures

# Setup scripts to ~/.local/bin
mkdir -p ~/.local/bin
chmod +x ./scripts/*
cp ./scripts/* ~/.local/bin

# Install recommanded apps
sudo apt install -y htop net-tools iperf tmux byobu kdiff3 python3-pip putty neofetch ulauncher exfat-fuse zip unzip hdparm etherwake

# Setup zsh & powerlevel10k
chmod +x ./install_zsh.sh
./install_zsh.sh

# Install Python packages
pip3 install wpm
pip3 install bpytop
pip3 install -U pyvisa
pip3 install pyvisa-py

# Setup Mouse Natural Scrolling
# cd /usr/share/X11/xorg.conf.d
# sudo vi 40-libinput.conf
# add Option "NaturalScrolling" "true" to Section "InputClass", Identifier "libinput pointer catchall"
#
#Section "InputClass"
#        Identifier "libinput point catchall"
#        MatchIsPointer "on"
#        MatchDevicePath "/dev/input/event*"
#        Driver "libinput"
#        Option "NaturalScrolling" "true"
