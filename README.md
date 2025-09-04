# Whats this??

These are configuration files for my development environment :)
Its just a convenience for myself, but if you want to use it, feel free to do so!

# Some remarks
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

