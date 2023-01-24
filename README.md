macOS Development Environment Configuration
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/pbassiner/dev-env/master/LICENSE)

# Brew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap Homebrew/bundle # expects Brefile in current dir
brew bundle # brew bundle dump to backup
```

# Shell
Download patched fonts https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

# SDKMAN
```shell
curl -s "https://get.sdkman.io" | bash
```
* java
* maven
* sbt

# Manually
* [MacPass](https://github.com/MacPass/MacPass/releases/latest)

# Other
* Add `iterm2` to "Open applications at login"

# License
[MIT License](LICENSE)
