# @Author: william
# @Date:   2019-12-04 17:22:01
# @Last Modified by:   william
# @Last Modified time: 2020-08-18 13:40:10
# Install tmux 2.8 on Centos

# install deps
yum install -y kernel-devel make ncurses-devel

# DOWNLOAD SOURCES FOR LIBEVENT AND FMAKE AND INSTALL
cd /tmp
# curl -LOk https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar -xf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./configure --prefix=/usr/local
make -j & make install


## Build and install ncurses
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar xf ncurses-6.1.tar.gz
cd ncurses-6.1
# ./configure --prefix=/home/admin/opt CXXFLAGS="-fPIC" CFLAGS="-fPIC"
./configure CXXFLAGS="-fPIC" CFLAGS="-fPIC"
make -j && make install

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL

cd /tmp
# curl -LOk https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
tar -xf tmux-2.8.tar.gz
cd tmux-2.8
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make -j && make install

pkill tmux
# close your terminal window (flushes cached tmux executable)
# open new shell and check tmux version
tmux -V


## 如果出现乱码
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
tmux -u

cd ~
mkdir -p Documents
cd Documents
git clone https://github.com/erikw/tmux-powerline.git


修改 opt/.tmux/tmux-powline/segments/hostname.sh


## 安装 tmux
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar zxvf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./configure --prefix=/home/admin/opt  --disable-shared
make -j & make install

cd ..
tar -xf tmux-2.8.tar.gz
cd tmux-2.8
CFLAGS="-I/home/admin/opt/include -I/home/admin/opt/include/ncurses" LDFLAGS="-L/home/admin/opt/lib -L/home/admin/opt/include/ncurses -Wl,-rpath=/home/admin/opt/lib" ./configure --prefix=/home/admin/opt
make -j && make install
## -----------------------------------------------------------------------------

CFLAGS="-I/home/fanglian/opt/include -I/home/fanglian/opt/include/ncurses" LDFLAGS="-L/home/fanglian/opt/lib -L/home/fanglian/opt/include/ncurses -Wl,-rpath=/home/fanglian/opt/lib" ./configure --prefix=/home/fanglian/opt
