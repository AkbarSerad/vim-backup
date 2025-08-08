

How to Restore on Another Machine
On any other machine where you want the same Vim setup:

1. Clone the repo

git clone https://github.com/AkbarSerad/vim-backup.git
cd vim-backup
2. Copy files into place

cp .vimrc ~/
cp -r .vim ~/
💡 If you want to symlink instead (to keep it version-controlled), do:


ln -sf ~/vim-backup/.vimrc ~/.vimrc
ln -sf ~/vim-backup/.vim ~/.vim
3. Ensure Vundle is installed

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
4. Open Vim and install plugins

vim +PluginInstall +qall
Done! 🎉
