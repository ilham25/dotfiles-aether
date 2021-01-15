# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions bgnotify)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
#alias ls="colorls --sd -A"

alias c="clear"
alias q="exit"
alias hd="hexdump -C"
alias pacrem="sudo pacman -Rcns"
alias yayupd="yay -Sy"
alias yayupg="yay -Syu"
alias msf="systemctl start postgresql && msfconsole"
alias pingoogle="ping 8.8.8.8"
alias httpd-start="sudo mkdir /var/log/httpd ; systemctl restart httpd mariadb"
alias httpd-stop="systemctl stop httpd mariadb"
alias httpd-status="systemctl status httpd mariadb"
alias trimall="sudo fstrim -va"
alias reflesh="sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist"
alias nanosu="sudo nano"
alias vimsu="sudo vim"

# Color toys aliases
alias bloks="~/.color-toys/bloks"
alias colortest="~/.color-toys/colortest"
alias colortest-slim="~/.color-toys/colortest-slim"
alias colorview="~/.color-toys/colorview"
alias colorbars="~/.color-toys/colorbars"
alias panes="~/.color-toys/panes"
alias pipes1="~/.color-toys/pipes1"
alias pipes2="~/.color-toys/pipes2"
alias pipes2-slim="~/.color-toys/pipes2-slim"

# PHP LAMPP
#PATH=/opt/lampp/bin:$PATH
# Brew PATH
#PATH=/opt/brew/bin:$PATH


# Mounting Partition
#alias mdata="sudo ntfs-3g /dev/sdb1 /media/iruha/sdb1 && thunar /media/iruha/sdb1"
#alias msector="sudo ntfs-3g /dev/sdb5 /media/iruha/sdb5 && thunar /media/iruha/sdb5"
#alias msystem="sudo ntfs-3g /dev/sda2 /media/iruha/sda2 && thunar /media/iruha/sda2"

mnt() {
    data() {
        sudo ntfs-3g /dev/sdb1 /media/iruha/sdb1 && thunar /media/iruha/sdb1
    }
    sector() {
        sudo ntfs-3g /dev/sdb5 /media/iruha/sdb5 && thunar /media/iruha/sdb5
    }
    system() {
        sudo ntfs-3g /dev/sda2 /media/iruha/sda2 && thunar /media/iruha/sda2
    }
    usb() {
        sudo ntfs-3g /dev/sdc1 /media/iruha/sdc1 && thunar /media/iruha/sdc1
    }
    "$1"
}

# Umounting Partition
# alias udata="sudo umount /dev/sdb1 && print 'Unmounting Partition : Data (/dev/sdb1) success'!"
# alias usector="sudo umount /deb/sdb5 && print 'Unmounting Partition : Sector (/dev/sdb5) success!'"
# alias usystem="sudo umount /dev/sda2 && print 'Unmounting Partition : System (/dev/sda2) success!'"

umnt() {
    data() {
        sudo umount /dev/sdb1 && print 'Unmounting Partition : Data (/dev/sdb1) success'!
    }
    sector() {
        sudo umount /dev/sdb5 && print 'Unmounting Partition : Sector (/dev/sdb5) success!'
    }
    system() {
        sudo umount /dev/sda2 && print 'Unmounting Partition : System (/dev/sda2) success!'
    }
    usb() {
        sudo umount /dev/sdc1 && print 'Unmounting Partition : USB (/dev/sdc1) success!'
    }
    "$1"
}

# LAMPP Start and Stop
# alias lamppstart="sudo /opt/lampp/lampp start"
# alias lamppstop="sudo /opt/lampp/lampp stop"

lampp() {
    case "$1" in
        "start")
        sudo /opt/lampp/lampp "$1"
        ;;
        "stop")
        sudo /opt/lampp/lampp "$1"
        ;;
        "panel")
        sudo /opt/lampp/manager-linux-x64.run
        ;;
        *)
        echo "Input error"
        ;;
    esac
}

# htdocs link
alias cdhtd="cd /opt/lampp/htdocs"
alias ophtd="thunar /opt/lampp/htdocs"

wordpress() {
    cp -r /opt/lampp/htdocs/wordpress /opt/lampp/htdocs/"$1"
    print New WordPress folder created on /opt/lampp/htdocs/"$1"
}
wpconf() {
    create() {
        cp "$1"/wp-config-sample.php "$1"/wp-config.php
        geany "$1"/wp-config.php
    }
    remove() {
        rm "$1"/wp-config.php
    }
    "$1" "$2"
}

# pacman related
alias pcs="sudo pacman -S"
alias pcr="sudo pacman -R"
alias pcrs="sudo pacman -Rs"

# Colortest
alias cts="~/Github/color-scripts/color-scripts/panes"

# Git add,commit,push
gitpush() {
    git add . && git commit -m "$1" && git push -u origin master
}

# Git add,commit
gitcom() {
    git add . && git commit -M "$1"
}

alias cht="~/.config/i3/change"

cppc() {
    g++ -o "$1" "$1.cpp"
    ./$1
}

cbg() {
    feh --bg-fill "$1"
}

tarc() {
    tar cf - "$1" | xz -z - > "$1".tar.xz
}


alias dotcode="code ~/Github/dotfiles/ && exit"

dotpush() {
    cd ~/Github/dotfiles && git add . && git commit -m "$1" && git push -u origin master && exit
}

cra() {
    npx create-react-app "$1"
}

#NPM GLOBAL
export PATH=~/.npm-global/bin:$PATH

#RUN NEOFETCH WHEN TERMINAL OPEN
#neofetch
#echo "おかえり、ドクター"

# ANDROID SDK IMPORT
export ANDROID_HOME=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin

# FLUTTER SDK IMPORT
export PATH=$PATH:~/Applications/flutter/bin

# RESOLUTION UTILITY
alias chgres="xrandr --output LVDS1 --scale 1.406x1.406"
alias chkres="xdpyinfo | grep 'dimensions:'"
