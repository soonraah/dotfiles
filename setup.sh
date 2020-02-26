
#!/bin/sh

cd ~/dotfiles

if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
    ln -s ~/dotfiles/prezto ~/.zprezto
fi

for file in .z*; do
    rm -i ~/$file
    ln -s ~/dotfiles/$file ~/$file
done
