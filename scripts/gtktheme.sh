echo =========================
echo = SETTING UP GTK THEMES =
echo =========================


#install numix icon theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle


#prep themes folder
if [-d "~/.themes"]; then
  mkdir ~/.themes
fi


#install yosembiance theme
git clone https://github.com/bsundman/Yosembiance.git
mv Yosembiance/Yos* ~/.themes
rm -rf Yosembiance


#install arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme


#install unity tweak tool
sudo apt-get install unity-tweak-tool
echo USER INPUT REQUIRED :
echo 1. set Appearance \> Icons \> Numix-circle
echo 2. set Appearance \> Theme \> *
echo 3. close the unity-tweak-tool gui window
unity-tweak-tool
