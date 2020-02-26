
#!/bin/sh

cd ~/dotfiles

if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
    ln -s ~/dotfiles/prezto ~/.zprezto
fi

# copy dot fliles to ~
for file in .*; do
    if [[ $file =~ ^\.git || $file =~ ^\.\.?$ ]]; then
        continue
    fi
    echo "Making linke of $file"
    rm -f -i ~/$file
    ln -s ~/dotfiles/$file ~/$file
done
