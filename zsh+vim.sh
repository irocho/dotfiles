sudo apt-get update && apt-get upgrade -y
sudo apt-get install zsh -y
sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install wget -y
echo "==================================="
echo "Instalados paquetes básicos"
echo "==================================="

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc /home/$USER/.vimrc
vim +PlugInstall +qall
vim -c 'PluginInstall' -c'source %' -c 'qa!'
echo "==========================================="
echo "vim listo cos seus plugins"
echo "==========================================="

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
cd ~

cp /home/$USER/dotfiles/zshrc /home/$USER/.zshrc
echo "==================================="
echo "zsh coas súas fontes debería ir"
echo "==================================="

