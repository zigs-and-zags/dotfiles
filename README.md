# Install
After messing with nix package manager and it messing with me, decided to use good old bash scripting to largely automate the setup of my mac. Its not perfect, but good enough. Darwin only for now. For a clean install, yeet the following in your terminal, passwords get asked at beginning and end.
``` bash
git clone https://github.com/zigs-and-zags/dotfiles.git ~/dotfiles
chmod +x ~/dotfiles/bin/setup/packages
chmod +x ~/dotfiles/bin/setup/defaults
~/dotfiles/bin/setup/packages
cd ~/dotfiles && /opt/homebrew/bin/stow .
source ~/.zshrc
~/dotfiles/bin/setup/defaults
echo "Scripts all done cap'n! Continue with the private setup (https://github.com/zigs-and-zags/dotfiles)"
```

# Install Manually
- App Store
    - PW manager
- Objective C
    - [LuLu](https://objective-see.org/products/lulu.html)
    - [BlockBlock](https://objective-see.org/products/blockblock.html)
    - [OverSight](https://objective-see.org/products/oversight.html)
- Misc
    - YubiKey Manager
    - UTM
    - Spotify

# Settings
- Lockdown mode
- Disable Siri, setup Spotlight
- In settings > "Modifier Keys" -> remap capslock to escape
- Enable secure keyboard entry in the stock terminal app (could brick when using with yubikey)
- Whack some root certs
- Secure safari

# TODO
- submodule for private binaries, like unpacking repo's, custom config and scripts, ...
    - structure ~/dotfiles/public and ~/dotfiles/private?
- https://github.com/drduh/macOS-Security-and-Privacy-Guide?tab=readme-ov-file#ssh