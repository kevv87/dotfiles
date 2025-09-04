# Whats this??

These are configuration files for my development environment :)
Its just a convenience for myself, but if you want to use it, feel free to do so!

# Some remarks
Tratamos de mantener todos los binarios propios en $HOME/.local/bin

## Prerequisites

You need the following:
- nvim + AstroNvim
- bash
- eza
- tmux + TPM

## Bash
Lo que hago es desde .bashrc hacer source a .profile.kev
```bash
source <repo>/.profile.kev
```

## Tmux
Soft link to .tmux.conf
```bash
ln -s <repo>/.tmux.conf ~/.tmux.conf
```

Then <prefix> + I to install plugins

## Nvim
We use AstroNvim, so we need to make sure to have its prerequisites:

### Prerequisites
#### RipGrep
https://github.com/BurntSushi/ripgrep
`cargo install ripgrep`

#### LazyGit
`gah install lazygit`

##### Gah
`bash -c "$(curl -fsSL https://raw.githubusercontent.com/marverix/gah/refs/heads/master/tools/install.sh)"`
https://github.com/marverix/gah/

### Compiling and installing
```bash
git clone https://github.com/neovim/neovim.git nvim
cd nvim
rm -r build/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local"
make install
```
