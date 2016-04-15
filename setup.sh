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

sudo reboot

