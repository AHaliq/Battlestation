sh ./scripts/gtktheme.sh


if [-d "~/.fonts"]; then
mkdir ~/.fonts
fi
cp ./fonts/FuraMono-* ~/.fonts/
fc-cache -f -v
#go and change your terminal colors and font


sh ./scripts/apps.sh


#install powerline
sudo apt-get install python-pip
pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline
# zsh powerline
echo "# Powerline Configuration" >> ~/.zshrc
echo ". ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh" >> ~/.zshrc
# vim powerline
echo '" Powerline configuration' | sudo tee --append /etc/vim/vimrc
echo "python from powerline.vim import setup as powerline_setup" | sudo tee --append /etc/vim/vimrc
echo "python powerline_setup()" | sudo tee --append /etc/vim/vimrc
echo "pythong del powerline_setup" | sudo tee --append /etc/vim/vimrc
echo "set laststatus=2" | sudo tee --append /etc/vim/vimrc
echo "set t_Co=256" | sudo tee --append /etc/vim/vimrc
# tmux powerline
tmux show -g | cat > ~/.tmux.conf
echo "source ~/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf" >> ~/.tmux.conf

sudo reboot

