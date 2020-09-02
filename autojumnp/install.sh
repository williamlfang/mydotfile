git clone git://github.com/joelthelion/autojump.git
cd autojump
./install.py

## /home/fl/.autojump/share/autojump/autojump.zsh
export PATH=/bin:/sbin:$PATH

echo "
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
" >> /etc/profile
