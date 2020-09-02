# If you come from bash you might have to change your $PATH.
export PATH=/home/william/anaconda3/bin:/usr/local/bin:$PATH
# export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/william/anaconda3/lib/:/usr/lib32/:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/william/anaconda3/lib/:/usr/lib32/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/william/anaconda3/lib/python3.7/site-packages/PyQt5/Qt/plugins/platforms/:$LD_LIBRARY_PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/william/.oh-my-zsh"
source /home/william/.zsh/antigen.zsh
export LD_LIBRARY_PATH=/home/william/workspace/highfort/hippo/external/exch/SFIT/CTP_v6.3.15_20190220:$LD_LIBRARY_PATH

## 防止找不到zsh
fpath=(/usr/share/zsh/$ZSH_VERSION/functions/ $fpath)

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
## ZSH_THEME="robbyrussell"

## =============================================================
ZSH_THEME="agnoster"
DEFAULT_USER="william"
## =============================================================


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    # vi-mode
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## =============================================================================
# added by Anaconda2 installer
export PATH="/home/william/anaconda2/bin:$PATH"
# export PATH="/home/william/anaconda3/bin:$PATH"  # commented out by conda initialize
## Qt
export QT_STYLE_OVERRIDE=gtk2

## PyCharm
## 添加到系统路径
#export PATH=/home/william/pycharm-2018.1.4/bin:${PATH}

## CLion
## 添加到系统路径
export PATH=/home/william/clion-2018.1.5/bin:${PATH}
alias pycharm='charm'

export QT_STYLE_OVERRIDE=gtk2
## =============================================================================

PATH=$PATH:/home/william/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 7E0E4237-E0E6-7480-A017-4313FDA31994

autoload -U compinit && compinit -u

# LC_CTYPE="zh_CN.utf8"

## =====================================
source ~/Documents/myConfig/"~"/alias.sh
source ~/Documents/myConfig/"~"/shell_function.sh
alias mount.disk='sudo mount /dev/sdb3 /home/william/disk'
alias lock='gnome-screensaver-command -l'
## =====================================
# mount.fl166
# mount.fl135
# mount.trader188
# mount.trader199

# sudo mount /dev/sdb2 ~/disk1
# mount /dev/sda3 /home/william/disk



[[ -s /home/william/.autojump/etc/profile.d/autojump.sh ]] && source /home/william/.autojump/etc/profile.d/autojump.sh

source /home/william/.zsh/antigen.zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOBUNDLES
command-not-found
colored-man-pages
magic-enter
heroku
pip
lein
extract
tmux
ssh-agent
zsh-users/zsh-completions
zsh-users/zsh-autosuggestions
hlissner/zsh-autopair
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search # load after zsh-syntax-highlighting
HeroCC/LS_COLORS
rupa/z
djui/alias-tips     # Alias reminder when launching a command that is aliased
desyncr/auto-ls     # auto print ls when cd
sobolevn/wakatime-zsh-plugin
EOBUNDLES

# Tell Antigen that you're done.
antigen apply
setopt rm_star_silent
## =====================================
alias fl@zgc='sshpass -p "123456" ssh -p10177 lfang@114.80.129.146'
alias q='exit'
## windown title 标题
precmd () { print -Pn "\e]0;$TITLE\a" }
title() { export TITLE="$*" }
DISABLE_AUTO_TITLE="true"
## autojump 自动补全的颜色设置
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'
LS_COLORS=$LS_COLORS:'di=1;32:' ; export LS_COLORS
## 给history命令增加时间
HIST_STAMPS="yyyy-mm-dd"
alias mount.disk='sudo mount /dev/sdb3 /home/william/disk'
alias settings='cinnamon-settings'
alias tailx='tail -n50 -f'
alias pdf='/usr/bin/masterpdfeditor4'

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory


export NVM_DIR="/home/william/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

csview()
{
    local file="$1"
    cat "$file" | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
}

alias v2ray.start='cd /tmp; nohup sudo /usr/local/v2ray/v2ray &'


parse_git_branch() {
     # git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

RPS1=`parse_git_branch`


alias root@bwg='ssh root@98.142.140.88 -p28024'
alias rsync@bwg='rsync --progress -vr -e "ssh -p28024" root@98.142.140.88:~/youtube/CppCon2016/* /home/william/Downloads/youtube/CppCon2016'
alias pc='proxychains4'

# alias rsync@vultr='rsync -avzh --progress -e "sshpass -p "J%8feAroYH%C_{#M" ssh" root@45.32.231.28:~/youtube/ /home/william/disk/youtube'
alias youdl='youtube-dl --yes-playlist --proxy "socks5://127.0.0.1:1086" --write-sub --sub-format "ass/srt/best" --convert-subs "srt"'

alias v2ray.start='nohup /usr/local/v2ray/v2ray &'

# >>> conda initialize >>>
## 如果需要在启动的时候就触发 base 环境
## 可以使用命令设置
## conda config --set auto_activate_base false
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/william/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/william/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/william/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/william/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias df='df -h'
alias root@bwg2='ssh root@80.251.219.73 -p28987'
# alias decomp='/home/william/Documents/myCTP/libs/NanoLog/runtime/decompressor decompress'

decomp () {
	/home/william/Documents/myCTP/libs/NanoLog/runtime/decompressor decompress $1 > log.txt && more log.txt
}

gnanolog () {
    g++ -std=c++17 "$@" -L /home/william/Documents/myCTP/libs/NanoLog/runtime -lNanoLog -lpthread -lrt -I/home/william/Documents/myCTP/libs/NanoLog/runtime
}
alias free='free -h'
alias fl@jd='ssh fl@114.67.109.5'
alias jupyterlab='/home/william/anaconda3/bin/jupyter lab'
alias jupyter.135='cd /tmp; nohup ssh -N -L 8135:localhost:8899 trader@192.168.1.135 -p 22&'
alias jupyter.166='cd /tmp; nohup ssh -N -L 8166:localhost:8899 fl@192.168.1.166 -p 22&'
alias jupyter.199='cd /tmp; nohup ssh -N -L 8199:localhost:8899 fl@192.168.1.199 -p 22&'
alias du.here='du -h ./ -d0'
alias ken@jp='sshpass -p "ken@jp" ssh -v ken@218.17.186.135 -p16222'
alias root@wk='sshpass -p "I520hicloud" ssh -v root@180.166.78.59 -p20017'
alias mj='make -j'
alias mvj='make VERBOSE=1 -j'

## --------------------------------------
alias fl@hf='ssh highfort@10.10.0.73'
alias fl@vpn='ssh vpn@10.10.0.32'
alias hf@xtp='ssh -p 20001 admin@10.10.0.14'
alias chickhouse@hf='sshpass -p "Hefu@2407" ssh clickhouse@clickhouse.db.prod.highfortfunds.com'
## --------------------------------------

## Hefu@2407
alias hf@gtja='ssh trader@180.166.9.91 -p 20622'
alias ctpmd@gtja='ssh trader@180.166.9.91 -p 20622'
alias ctpmd@hf='sshpass -p "Hefu@2407" ssh root@10.10.2.3'
alias ctpmd@zz='sshpass -p "Hefu@2407" ssh root@192.168.1.201'

## =============================================================
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     # prompt_segment black default "%(!.%{%F{yellow}%}.)$USER@%sh"
#     prompt_segment black default "%(!.%{%F{yellow}%}.)%{$fg[red]%}lyb%{$reset_color%}%{$fg[yellow]%}@sh"  
#   fi
# }
## =============================================================

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/william/Documents/Linux-Tools/minio/mc mc
