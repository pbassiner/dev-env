Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/aserrallerios/dev-env/master/LICENSE)

# Prepare

Either log into Github and get an access token or log into Dropbox and open KeepassXC database to get a Github token.

# Run it

```shell
wget -qO- https://raw.github.com/aserrallerios/dev-env/master/bootstrap.sh | bash
```
For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):
```shell
wget -qO- https://raw.github.com/aserrallerios/dev-env/master/bootstrap.sh | bash -s -- -b test_branch
```

# Disclaimer

This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.

Only tested on Manjaro Linux. May work on any Arch Linux as well.

# What to do after running installation

1. Log into Dropbox
2. Run `sensible.dotfiles` installer with the token saved in Dropbox -> KeepassXC
3. Configure your Terminal emulators with the desired fonts (this can be automated)
4. Add desiredd scripts to system autostart
5. Tweak desktop & desktop shortcuts (install KDE addons)
6. Sync into Firefox
7. Enable package management on Sublime Text & install Sync plugin
8. Configure other apps (IntelliJ, Atom, etc.)

# License

[MIT License](LICENSE)
