Development Environment Configuration with Ansible
==================================================
# Run it
```
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash
```
# Disclaimer
This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.
# Content (specific for Ubuntu 16.04)
Note: if no version is specified it means the latest will be installed
## Dev Tools
* [vim] (http://www.vim.org/)
* [zsh](https://github.com/zsh-users/zsh)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [terminator] (https://launchpad.net/terminator/)
* [git] (https://git-scm.com/)
* [hub](https://github.com/github/hub) (2.2.3)
* [keepassx] (https://www.keepassx.org/)

## Editors & IDEs
* [Sublime Text 3](https://www.sublimetext.com/) (build 3114)
* [Atom] (https://github.com/atom/atom)
* [IntelliJ IDEA] (https://www.jetbrains.com/idea/) (Community 2016.1.3)
* [MySQL Workbench] (https://www.mysql.com/products/workbench/) (6.3.6 for Ubuntu 15.10)

## Utilities
* [Google Chrome] (https://www.google.com/chrome/browser/desktop/index.html)
* [Dropbox] (https://www.dropbox.com/)

## Development environments
* Oracle Java 7
* Oracle Java 8
* [sdkman] (http://sdkman.io/), which is used to install:
    * [sbt] (http://www.scala-sbt.org/)
    * [maven] (https://maven.apache.org/)
* [docker] (https://www.docker.com/)
* [docker-compose] (https://docs.docker.com/compose/) (1.7.1)
* [virtualbox] (https://www.virtualbox.org/)
* [vagrant] (https://www.vagrantup.com/)

## Custom configuration
* zsh
    * Set as default shell
    * autocompletion for:
        * hub
        * docker-compose
* Symlinks
    * oh-my-zsh custom theme
    * .zshrc
    * .gitconfig
    * .aliases
    * terminator custom config
    * guake autostart