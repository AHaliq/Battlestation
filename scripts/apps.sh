echo ===================
echo = SETTING UP APPS =
echo ===================


#install git
sudo apt-get install git


#install various utils
sudo apt-get install htop speedometer tree screenfetch


#install powerline
sudo apt-get install python-pip
pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline


#install zsh
sudo apt-get install zsh
wget https://github.com/robbyrussel/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ./configfiles/.zshrc ~/
chsh -s /usr/bin/zsh


#install tmux
sudo apt-get install tmux
cp ./configfiles/.tmux.conf ~/
