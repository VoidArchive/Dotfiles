# My personal Dotfiles

Symlink command to remember

```bash
# 1. pick a repo or backup directory for dotfiles
mkdir -p ~/dotfiles

# 2. move the existing Neovim config there
mv ~/.config/nvim ~/dotfiles/nvim

# 3. create the symlink back to the original path
ln -s ~/dotfiles/nvim ~/.config/nvim

# 4. confirm the link
ls -l ~/.config | grep nvim

```

1. Neovim
2. Zshrc
3. Hyde.Zshrc
4. Tmux config
