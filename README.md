Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/pbassiner/dev-env/master/LICENSE)

# Run it
```shell
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash
```
For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):
```shell
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash -s -- -b test-branch
```

# Disclaimer
This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.

# Content
Note: if no version is specified it means the latest will be installed

## Dev Tools
* [vim](http://www.vim.org/)
* [zsh](https://github.com/zsh-users/zsh)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [terminator](https://launchpad.net/terminator/)
* [guake](https://github.com/Guake/guake/)
* [git](https://git-scm.com/)
* [hub](https://github.com/github/hub) ![Installed](https://img.shields.io/badge/current\-v2.14.1-blue.svg) [![GitHub release](https://img.shields.io/github/release/github/hub.svg?label=latest)](https://github.com/github/hub/releases/latest)
* [jq](https://stedolan.github.io/jq/)
* [keepassx](https://www.keepassx.org/)
* [httpie](https://github.com/jkbrzt/httpie)
* [kubectl](https://github.com/kubernetes/kubernetes) ![Installed](https://img.shields.io/badge/current\-v1.15.0-blue.svg) [![GitHub release](https://img.shields.io/github/release/kubernetes/kubernetes.svg?label=latest)](https://github.com/kubernetes/kubernetes/releases/latest)
* [ammonite](https://github.com/lihaoyi/Ammonite) ![Installed](https://img.shields.io/badge/current\-v2.0.4-blue.svg) [![GitHub release](https://img.shields.io/github/release/lihaoyi/Ammonite.svg?label=latest)](https://github.com/lihaoyi/Ammonite/releases/latest)
* [Meld](http://meldmerge.org/)

## SDKs & Runtimes
* OpenJDK 8 & 11
* [sbt](http://www.scala-sbt.org/)
* [maven](https://maven.apache.org/) ![Installed](https://img.shields.io/badge/current\-v3.6.0-blue.svg)
* [python](https://www.python.org/) ![Installed](https://img.shields.io/badge/current\-v3.6-blue.svg)
* [pip](https://pip.pypa.io)
* [pipenv](https://docs.pipenv.org/)
* [docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/) ![Installed](https://img.shields.io/badge/current\-v1.22.0-blue.svg) [![GitHub release](https://img.shields.io/github/release/docker/compose.svg?label=latest)](https://github.com/docker/compose/releases/latest)
* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)

## Editors & IDEs
* [Sublime Text 3](https://www.sublimetext.com/)
* [IntelliJ IDEA](https://www.jetbrains.com/idea/) (Community 2019.3.4)
* [PyCharm](https://www.jetbrains.com/pycharm/) (Community 2019.3.4)
* [DBeaver](https://dbeaver.io/)
* [MySQL Workbench](https://www.mysql.com/products/workbench/)
* [Typora](https://typora.io/)

## Other utilities
* [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
* [Dropbox](https://www.dropbox.com/)
* [Spotify](https://www.spotify.com)

## Custom configuration
* Fonts
    * [powerline](https://github.com/powerline/powerline)
    * [awesome-terminal-fonts](https://github.com/gabrielelana/awesome-terminal-fonts)
* zsh
    * Set as default shell
    * [Powerlevel9k](https://github.com/bhilburn/powerlevel9k) theme
    * Add custom plugins:
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    * Add autocompletion for:
        * hub
        * docker-compose
        * kubectl
* Symlinks
    * oh-my-zsh custom theme
    * .zshrc
    * .gitconfig
    * .aliases
    * IntelliJ desktop file for launcher
    * terminator custom config
    * guake autostart
    * Sublime Text 3 config

# License
[MIT License](LICENSE)
