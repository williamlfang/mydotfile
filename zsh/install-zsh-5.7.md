## Ref: https://gist.github.com/Semo/378fba2516a31f2608f0ad0161a73ab7

Given that you have a clean installation of CentOS 7 which was already updated, by you, then you still have some dependencies to install make and install the external Zsh from the source. You must be root to get the stuff done.

Install GCC Development Tools

```bash
yum groupinstall "Development tools"
```

Check if it's working
```bash
gcc -v
```

Get and install ncurses
```bash
yum install ncurses-devel
```

Download the zsh sources
```bash
## wget https://sourceforge.net/projects/zsh/files/zsh/5.6.2/zsh-5.6.2.tar.xz/
download

wget https://sourceforge.net/projects/zsh/files/zsh/5.7/zsh-5.7.tar.xz/download
```

Untar it
```bash
tar -xvJf download
```

Prepare the loaded sources
```bash
cd zsh-5.6.2 ./configure
```

Make a binary
```bash
make
```

Install the binary
```bash
make install
```

Edit the /etc/shells file to let CentOS know about the Zsh
```bash
vi /etc/shells
```

Insert the next line to the bottom and save it
```bash
/usr/local/bin/zsh
```

Change the system's shell
```bash
chsh -s /usr/local/bin/zsh

ln -sf /usr/local/bin/zsh /bin/zsh 
chsh -s /usr/local/bin/zsh-5.7 trader
```

Done (TM) ;-)
