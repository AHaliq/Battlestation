#install git
sudo apt-get install git
#install numix icon theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle
#clone yosembiance theme
if [-d "~/.themes"]; then
mkdir ~/.themes
fi
git clone https://github.com/bsundman/Yosembiance.git ~/.themes
#unity-tweak-tool > appearance > icons > Numix-circle
sudo apt-get install unity-tweak-tool
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo set Icons to : Numix-Circle, Themes to : Yosembiance-atomic-blue
unity-tweak-tool
if [-d "~/.fonts"]; then
mkdir ~/.fonts
fi
cp ./fonts/FuraMono-* ~/.fonts/
fc-cache -f -v
#go and change your terminal colors and font
#install zsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s /usr/bin/zsh
#install tmux
sudo apt-get install tmux
#install powerline
sudo apt-get install python-pip
pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline
# zsh powerline
echo "# Powerline Configuration" >> ~/.zshrc
echo ". ~/.loacl/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh" >> ~/.zshrc
# vim powerline
echo '" Powerline configuration' | sudo tee --append /etc/vim/vimrc
echo "python from powerline.vim import setup as powerline_setup" | sudo tee --append /etc/vim/vimrc
echo "python powerline_setup()" | sudo tee --append /etc/vim/vimrc
echo "pythong del powerline_setup" | sudo tee --append /etc/vim/vimrc
echo "set laststatus=2" | sudo tee --append /etc/vim/vimrc
echo "set t_Co=256" | sudo tee --append /etc/vim/vimrc


sudo reboot

