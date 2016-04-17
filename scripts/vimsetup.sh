echo ==================
echo = SETTING UP VIM =
echo ==================


#install vim base
sudo apt-get install vim
cp ./configfiles/.vimrc ~/


#install pathogen (plugin manager)
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


cd ~/.vim/bundle
#install nerdtree (project directory tree viewer)
git clone https://github.com/scrooloose/nerdtree.git


#install nerdtree-tabs (persistent tree in vim tabs)
git clone https://github.com/jistr/vim-nerdtree-tabs.git

#install nerdtree-git (git indicators)
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git 
