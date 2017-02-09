Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT License-blue.svg)](https://raw.githubusercontent.com/pbassiner/dev-env/master/LICENSE)

# Run it
```shell
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash
```
For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):
```shell
wget -qO- https://raw.github.com/pbassiner/dev-env/master/bootstrap.sh | bash -s -- -b test_branch
```

# Disclaimer
This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.

# Content (specific for Ubuntu 16.04)
Note: if no version is specified it means the latest will be installed

## Dev Tools
* [vim](http://www.vim.org/)
* [zsh](https://github.com/zsh-users/zsh)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [terminator](https://launchpad.net/terminator/)
* [guake](https://github.com/Guake/guake/)
* [git](https://git-scm.com/)
* [hub](https://github.com/github/hub) ![Installed](https://img.shields.io/badge/current\-v2.2.9-blue.svg) [![GitHub release](https://img.shields.io/github/release/github/hub.svg?label=latest)](https://github.com/github/hub/releases/latest)
* [keepassx](https://www.keepassx.org/)
* [httpie](https://github.com/jkbrzt/httpie)
* [kubectl](https://github.com/kubernetes/kubernetes) ![Installed](https://img.shields.io/badge/current\-v1.5.2-blue.svg) [![GitHub release](https://img.shields.io/github/release/kubernetes/kubernetes.svg?label=latest)](https://github.com/kubernetes/kubernetes/releases/latest)
* [ammonite](https://github.com/lihaoyi/Ammonite) ![Installed](https://img.shields.io/badge/current\-v0.8.2-blue.svg) [![GitHub release](https://img.shields.io/github/release/lihaoyi/Ammonite.svg?label=latest)](https://github.com/lihaoyi/Ammonite/releases/latest)

## SDKs & Runtimes
* Oracle Java 7
* Oracle Java 8
* [sdkman](http://sdkman.io/), which is used to install:
    * [sbt](http://www.scala-sbt.org/)
    * [maven](https://maven.apache.org/)
* [docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/) ![Installed](https://img.shields.io/badge/current\-v1.11.0-blue.svg) [![GitHub release](https://img.shields.io/github/release/docker/compose.svg?label=latest)](https://github.com/docker/compose/releases/latest)
* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)

## Editors & IDEs
* [Sublime Text 3](https://www.sublimetext.com/) (build 3126)
* [Atom](https://github.com/atom/atom)
* [IntelliJ IDEA](https://www.jetbrains.com/idea/) (Community 2016.3.4)
* [MySQL Workbench](https://www.mysql.com/products/workbench/)

## Other utilities
* [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
* [Dropbox](https://www.dropbox.com/)

## Custom configuration
* zsh
    * Set as default shell
    * Add autocompletion for:
        * hub
        * sdk
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
* Atom plugins
    * [atom-beautify](https://github.com/Glavin001/atom-beautify)
    * [atom-scalariform](https://github.com/jackhopner/atom-scalariform)
    * [file-icons](https://github.com/DanBrooker/file-icons)
    * [language-scala](https://github.com/atom-community/language-scala)

# License
[MIT License](LICENSE)
