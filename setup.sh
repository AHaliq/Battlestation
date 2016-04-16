sh ./scripts/gtktheme.sh


if [-d "~/.fonts"]; then
mkdir ~/.fonts
fi
cp ./fonts/FuraMono-* ~/.fonts/
fc-cache -f -v
#go and change your terminal colors and font


sh ./scripts/apps.sh
sh ./scripts/vimsetup.sh

sudo reboot

