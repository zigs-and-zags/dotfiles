# Public install
``` bash
git clone https://github.com/zigs-and-zags/dotfiles.git ~/dotfiles
chmod +x ~/dotfiles/setup/packages
chmod +x ~/dotfiles/setup/defaults
~/dotfiles/setup/packages
/opt/homebrew/bin/stow -t ~/ ~/dotfiles
source ~/.zshrc
~/dotfiles/setup/defaults
echo "Scripts all done cap'n! Reboot and enjoy!"
```

# Private install
``` bash
git clone https://github.com/zigs-and-zags/dotfiles.git ~/dotfiles
cd ~/dotfiles && git submodule update --init --recursive && git pull --recurse-submodules
chmod +x ~/dotfiles/private/setup/pre-install
chmod +x ~/dotfiles/private/setup/post-install
~/dotfiles/private/setup/pre-install
chmod +x ~/dotfiles/setup/packages
chmod +x ~/dotfiles/setup/defaults
~/dotfiles/setup/packages
/opt/homebrew/bin/stow -t ~/dotfiles ~/dotfiles/private
/opt/homebrew/bin/stow -t ~/ ~/dotfiles
source ~/.zshrc
~/dotfiles/setup/defaults
~/dotfiles/private/setup/post-install
echo "Scripts all done cap'n! Reboot and enjoy!/n/n"
cat ~/dotfiles/private/docs/setup.md
```