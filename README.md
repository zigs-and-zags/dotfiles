# Install
Darwin only for now. For a clean install, execute the folowing in your terminal, password + enter and and watch it go brrrrrrrr!
``` bash
git clone https://github.com/zigs-and-zags/dotfiles.git ~/.dotfiles
chmod +x ~/.dotfiles/bin/setup/packages
chmod +x ~/.dotfiles/bin/setup/defaults
~/.dotfiles/bin/setup/packages
cd ~/.dotfiles && stow .
source ~/.zshrc
~/.dotfiles/bin/setup/defaults
sudo reboot
```

# Install Manually
## App Store
- PW manager
## Security - Objective C
- [LuLu](https://objective-see.org/products/lulu.html)
- [BlockBlock](https://objective-see.org/products/blockblock.html)
- [OverSight](https://objective-see.org/products/oversight.html)
## Misc
- YubiKey Manager
- UTM

# Settings
- Lockdown mode
- Disable Siri
- In settings > "Modifier Keys" -> remap capslock to escape
- Enable secure keyboar entry in the stock terminal app (could brick when using with yubikey)
- Mess with some root certs
- Secure safari

# TODO
- https://github.com/drduh/macOS-Security-and-Privacy-Guide?tab=readme-ov-file#ssh