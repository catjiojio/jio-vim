#curl -fsSL https://deno.land/install.sh | sh
mv ~/.vimrc ~/.vimrc_bak
ln -s $PWD/_vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Vim configuration done"
read -p "Press any key to continue." var



