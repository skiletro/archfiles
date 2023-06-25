if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add flatpak exports to PATH
set -l xdg_data_home $XDG_DATA_HOME ~/.local/share
set -gx --path XDG_DATA_DIRS $xdg_data_home[1]/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end

# Remove fish intro
set --universal fish_greeting ""

# fff with the added functionality of moving to that directory after quitting
function f
    fff $argv
    set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
    cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

# shortcut to start a vnc server with no security (my work around to use laptop on my computer)
function startvnc
    x0vncserver -SecurityTypes=none
end

# update
function updatesystem
    sudo pacman -Sy
    sudo pacman -S archlinux-keyring --noconfirm
    sudo pacman -S endeavouros-keyring --noconfirm
    sudo pacman -Su
    flatpak update
    pkcon refresh
    pkcon update
    yay -Su
end

# alises
alias "sync" "onedrive --synchronize"
alias "code-hires" "xprop -root -f _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 1.25 && code --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias xcd='cd "$(xplr --print-pwd-as-result)"'

export PATH="$PATH:$HOME/.spicetify"

#Starship prompt
starship init fish | source
