
#Vim setup

1. install Neovim:
https://github.com/neovim/neovim/wiki/Installing-Neovim

2. copy `init.vim` and `colors` to `~/.config/nvim/`

3. Install VimPlug
   `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

4. in nvim, `:PluginInstall`

5. (optional) add `alias vim="nvim"` in your .bashrc or .zshrc
