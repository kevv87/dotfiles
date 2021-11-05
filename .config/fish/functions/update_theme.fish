#! /usr/bin/fish
function update_theme
    if defaults read -g AppleInterfaceStyle >/dev/null 2>&1
        # Tema de fish
        theme_gruvbox dark
        # Tema de nvim
        sed -i '' -e '$ d' ~/.config/nvim/init.vim # Eliminando ultima linea
        echo "set background=dark" >> ~/.config/nvim/init.vim
        # Tema de tmux
        sed -i -e 's/light/dark/g' ~/.tmux.conf
        tmux source-file ~/.tmux.conf
    else 
        theme_gruvbox light
        sed -i '' -e '$ d' ~/.config/nvim/init.vim # Eliminando ultima linea
        echo "set background=light" >> ~/.config/nvim/init.vim
        sed -i -e 's/dark/light/g' ~/.tmux.conf
        tmux source-file ~/.tmux.conf
    end
end


