apt-get update && apt-get upgrade -y
apt-get install zsh -y
apt-get install vim -y
apt-get install git -y
apt-get install curl -y
apt-get install wget -y
echo "==================================="
echo "Instalados paquetes básicos"
echo "==================================="

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

cp zshrc /home/$USER/.zshrc
echo "==================================="
echo "zsh coas súas fontes debería ir"
echo "==================================="

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc /home/$USER/.vimrc
vim +PlugInstall +qall
vim -c 'PluginInstall' -c'source %' -c 'qa!'
echo "==========================================="
echo "vim listo cos seus plugins"
echo "==========================================="
