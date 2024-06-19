echo "Clone Vundle.vim.."
git clone https://github.com/gmarik/Vundle.vim.git \
    ~/.vim/bundle/Vundle.vim
echo "Clone copilot.vim.."
git clone https://github.com/github/copilot.vim.git \
    ~/.vim/pack/github/start/copilot.vim

echo "Update .vimrc.."
mv ~/.vimrc ~/.vimrc_bak
ln -s $PWD/_vimrc ~/.vimrc

echo "Install vim plugin.."
vim +PluginInstall +qall

echo "Install deno.."
if [ -d "$HOME/.deno" ]; then
    echo "Deno already installed"
else
    curl -fsSL https://deno.land/install.sh | sh
    echo "export DENO_INSTALL=\$HOME/.deno" >> ~/.bashrc
    echo "export PATH=\$DENO_INSTALL/bin:\$PATH" >>  ~/.bashrc
    source ~/.bashrc
fi

echo "Vim configuration done"
read -p "Press any key to continue." var
