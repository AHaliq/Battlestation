echo ==================
echo = SETTING UP VIM =
echo ==================


#install vim base
sudo apt-get install vim
cp ./configfiles/.vimrc ~/


#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#install nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git



