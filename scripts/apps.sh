echo '==================='
echo '= SETTING UP APPS ='
echo '==================='


#install git
sudo apt-get install git


#install various utils
sudo apt-get install htop speedometer tree screenfetch gnome-system-monitor


#install spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client


#install powerline
sudo apt-get install python-pip
pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline


#install zsh
sudo apt-get install zsh
wget https://github.com/robbyrussel/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ./configfiles/zshrc ~/.zshrc
chsh -s /usr/bin/zsh


#install tmux
sudo apt-get install tmux
cp ./configfiles/tmux.conf ~/.tmux-conf

echo left to cleanup launcher icons and system monitor tray

#install nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install npm -g

# install global packages
sudo npm install -g grunt jshint jsonlint
cp ./configfiles/jshintrc ~/.jshintrc

#install ruby
sudo apt-get install ruby-full

#install heroku
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
