
#!/bin/sh

if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
    ln -s ~/dotfiles/prezto ~/.zprezto

for file in .z*; do
    rm -i ~/$file
    ln -s ~/dotfiles/$file ~/$file
done
