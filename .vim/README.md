# How to configure (for ME)

./configure \
    --prefix=$HOME/opt/vim/ \
    --with-features=huge \
    --srcdir=. \
    --enable-gui=no \
    --enable-cscope \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-python3interp \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gn
