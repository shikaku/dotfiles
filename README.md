# My dotfiles

## How to compile VIM

excess dev dependencies:
libpython-all-dev libpython-dev libpython2.7-dev libpython3-all-dev libpython3-dev libpython3.4-dev python-all-dev python-dev python3.4-dev libperl-dev xorg-dev

with python 2.6:
./configure --with-features=huge --prefix=$HOME/opt/vim/ --srcdir=. --disable-gui --without-x --enable-cscope --enable-perlinterp --enable-pythoninterp --with-python-config-dir=/usr/lib64/python2.6/config

with python 2.7 (no GUI):
./configure \
    --prefix=$HOME/opt/vim/ \
    --srcdir=. \
    --with-features=huge \
    --without-x \
    --disable-gui \
    --enable-cscope \
    --enable-perlinterp \
    --enable-pythoninterp

with python 2.7/3.4 (GUI):
./configure \
    --prefix=$HOME/opt/vim/ \
    --srcdir=. \
    --with-features=huge \
    --with-x \
    --enable-gui=auto \
    --enable-cscope \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-python3interp \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu

mac:
    --with-x \
./configure \
    --disable-darwin \
    --prefix=$HOME/opt/vim/ \
    --srcdir=. \
    --with-features=huge \
    --enable-multibyte \ 
    --enable-cscope \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-python3interp \
    --with-python-config-dir=/usr/local/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/ \
    --with-python3-config-dir=/usr/local/Frameworks/Python.framework/Versions/3.5/lib/python3.5/config-3.5m/
