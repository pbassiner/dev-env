Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/aserrallerios/dev-env/master/LICENSE)

# Prepare

Either log into Github and get an access token or log into Dropbox and open KeepassXC database to get a Github token.

The Github token is used in the `sensible.dotfiles` installation.

# Run it

```shell
GITHUB_TOKEN=...; wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash
```
For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):
```shell
GITHUB_TOKEN=...; wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash -s -- -b test_branch
```

## Alternative

If you don't have `wget` installed and have `git` instead:

```shell
git clone https://github.com/aserrallerios/dev-env /tmp/.dev-env && GITHUB_TOKEN=...; /tmp/.dev-env/master/bootstrap.sh
```

Or `curl`:

```shell
GITHUB_TOKEN=...; curl https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh | bash
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
6. Enable package management on Sublime Text & install Sync plugin
7. Configure other apps (IntelliJ, Atom, etc.)

# License

[MIT License](LICENSE)
