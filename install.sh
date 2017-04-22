if [ `uname -s` = 'Darwin' ]; then
    sh ./osx.sh
else
    echo "TODO"
fi

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/neobundle.sh
sh ~/neobundle.sh
rm ~/neobundle.sh

