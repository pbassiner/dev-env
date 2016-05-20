Development Environment Configuration with Ansible
==================================================
# Run it
```
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash
```
# Disclaimer
This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.
# Content
## Dev Tools
* vim
* zsh
* oh-my-zsh
* terminator
* keepassx

## Editors & IDEs
* Sublime Text 3
* Atom
* IntelliJ IDEA
* MySQL Workbench

## Utilities
* Google Chrome
* Dropbox

## Development environments
* Oracle Java 7
* Oracle Java 8
* sdkman, which is used to install:
    * sbt (latest)
    * maven (latest)
* docker (for Ubuntu 15.10)

## Custom configuration
* Set zsh as default shell
* Symlinks
    * oh-my-zsh custom theme
    * .zshrc
    * .gitconfig
    * .aliases
