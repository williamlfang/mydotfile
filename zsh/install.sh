
## 更改默认 shell
## ----------
chsh -s /bin/zsh fl

## 安装 oh-my-zsh
bash oh-my-zsh.sh

## 安装 antigen
# cd ~
# mkdir -p .zsh
# curl -L git.io/antigen > ~/.zsh/antigen.zsh
mkdir -p ~/.zsh
cp antigen.zsh ~/.zsh/antigen.zsh



echo "
## 需要找到相应的路径
fpath=(/usr/local/share/zsh/5.7/functions $fpath)
export FPATH="/usr/local/share/zsh/5.7/functions:$FPATH"

source ~/.zsh/antigen.zsh

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
djui/alias-tips # Alias reminder when launching a command that is aliased
EOBUNDLES

# Tell Antigen that you're done.
antigen apply
" >> ~/.zshrc

source ~/.zshrc

## /home/fl/.autojump/share/autojump/autojump.zsh
export PATH=/bin:/sbin:$PATH

