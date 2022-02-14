sudo apt install -y curl
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
#vi ~/.zshrc
#ZSH_THEME="powerlevel10k/powerlevel10k"
sed -i "/ZSH_THEME=\"/c\ZSH_THEME=\"powerlevel10k/powerlevel10k\"" ~/.zshrc
