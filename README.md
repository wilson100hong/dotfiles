

#Vim
1. 
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```
2. Copy `.vimrc` and `colors`
```
   cp .vimrc ~/.vim/
   cp colors ~/.vim/
   ln -s ~/.vim/vimrc ~/.vimrc 
```

3. Install VimPlug
```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
4. YouComplete Install
https://www.jianshu.com/p/d908ce81017a
copy .ycm_extra_conf.py


#NeoVim
1. Install Neovim:
https://github.com/neovim/neovim/wiki/Installing-Neovim

2. Copy `init.vim` and `colors` to `~/.config/nvim/`
```
   cp init.vim ~/.config/nvim
   cp colors ~/.config/nvim
```

3. Install VimPlug
```
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#Plugins
1. in vim/nvim, 
```
:PlugInstall
```

