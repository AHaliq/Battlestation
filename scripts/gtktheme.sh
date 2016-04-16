echo =========================
echo = SETTING UP GTK THEMES =
echo =========================


#install numix icon theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle


#install yosembiance gtk theme
if [-d "~/.themes"]; then
  mkdir ~/.themes
fi
git clone https://github.com/bsundman/Yosembiance.git
mv Yosembiance/Yos* ~/.themes
rm -rf Yosembiance


#install unity tweak tool
sudo apt-get install unity-tweak-tool
echo USER INPUT REQUIRED :
echo 1. set Appearance \> Icons \> Numix-circle
echo 2. set Appearance \> Theme \> Yosembiance-*
echo 3. close the unity-tweak-tool gui window
unity-tweak-tool
