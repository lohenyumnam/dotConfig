## Setup for Dotfiles using GNU Stow

1. Clone the repository to your home directory
2. Install GNU Stow

```bash
brew install stow
```

3. Run `stow <directory>` to symlink the files in the directory to your home directory

```bash
stow .dotfiles # If you are in home directory
```
