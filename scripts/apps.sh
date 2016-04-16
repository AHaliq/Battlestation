echo ===================
echo = SETTING UP APPS =
echo ===================


#install git
sudo apt-get install git


#install zsh
sudo apt-get install zsh
wget https://github.com/robbyrussel/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
#copy over .zshrc
chsh -s /usr/bin/zsh


#install tmux
sudo apt-get install tmux
#copy over .tmux.conf


