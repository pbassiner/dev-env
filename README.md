Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/aserrallerios/dev-env/master/LICENSE)

# Prepare

Either log into Github and get an access token or log into Dropbox and open KeepassXC database to get a Github token.

The Github token is used in the `sensible.dotfiles` installation.

# Run it

```shell
# with wget
export GITHUB_TOKEN=...; wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash
# with curl
export GITHUB_TOKEN=...; curl https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash
# with git
git clone https://github.com/aserrallerios/dev-env /tmp/.dev-env && export GITHUB_TOKEN=...; /tmp/.dev-env/master/bootstrap.sh
```

For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):
```shell
export GITHUB_TOKEN=...; wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash -s -- -b test_branch
```

# Disclaimer

This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.

Only tested on Manjaro Linux. May work on any Arch Linux as well.

# What to do after running installation

1. Log into Dropbox
2. Configure your Terminal emulators with the desired fonts (this can be automated)
3. Add desiredd scripts to system autostart (this can be automated)
4. Tweak desktop & desktop shortcuts (install KDE addons)
5. Sync into Firefox
7. Configure apps (IntelliJ, Sublime, VSCode, Atom, etc.)

## In MacOS

1. Log into odrive desktop client
2. Set up Java:
    ```sh
    /usr/libexec/java_home -V
    jenv add /System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
    ```
# TODO

## MACOS

* Auto add ssh keys
* Fix iTerm install
* Add iTerm config
* Add iTerm_shell_integration.zsh
* Add/change global shortcuts
* Customize keyboard

## Global

* Test idempotency
* Fix `sensible.dotfiles` installation
* submodules??
* tmate vs gotty vs showterm vs termshare
* add hyper terminal https://hyper.is/
* termui
* scala: coursier + ammoniteREPL https://github.com/milessabin/shapeless#try-shapeless-with-an-ammonite-instant-repl
* python env tool (virtualenv, pyenv?)
* pip
* npm
* node env tool
[ ] gotty
[ ] glances


# License

[MIT License](LICENSE)
