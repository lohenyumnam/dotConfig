## Setup for Dotfiles using GNU Stow

1. Install GNU Stow

```bash
brew install stow
```

2. Clone the repository to your home directory & Go to the cloned directory

```bash
cd ~/dotfiles
show show-config # To set the global config for show
```

3. Run `stow <directory>` to symlink the files in the directory to your home directory

```bash
stow ghostty # If you are inside the cloned directory
# or
stow ghostty nvim stow-config tmux # this will add the symlinks for all the directories
```

4. To remove the symlinks, run `stow -D <directory>`

```bash
stow -D ghostty # If you are inside the cloned directory
```

## List of Dotfiles

1. [Ghostty](./ghostty)
2. [Neovim](./nvim)
3. [Stow](./stow-config)
4. [Tmux](./tmux)
