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
#install git gutter
git clone https://github.com/airblade/vim-gitgutter.git
#install autopairs
git clone https://github.com/jiangmiao/auto-pairs.git
#install surround (wrap text)
git clone https://github.com/tpope/vim-surround.git
#install emmet (html shorthand)
git clone https://github.com/mattn/emmet-vim.git
#install commentary (comment out util)
git clone https://github.com/tpope/vim-commentary.git


#install color scheme
cd ~/.vim
git clone https://github.com/joshdick/onedark.vim.git
cd onedark.vim
mv colors ./
cd ~/.vim
sudo rm -rf onedark.vim
