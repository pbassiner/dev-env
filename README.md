Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/aserrallerios/dev-env/master/LICENSE)

# Prepare

Log into GitHub and get an access token. You can use [copypaste.me](https://copypaste.me) to share passwords and snippets between devices.

The GitHub token is required for the `sensible.dotfiles` installation.

# Run it

```shell
# with wget
export GITHUB_TOKEN=... && wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh -O bootstrap.sh && chmod u+x bootstrap.sh && ./bootstrap.sh
# with curl
export GITHUB_TOKEN=... && curl -s https://raw.githubusercontent.com/aserrallerios/dev-env/master/bootstrap.sh -O && chmod u+x ./bootstrap.sh && ./bootstrap.sh
# with git
git clone -b master --single-branch --depth 1 https://github.com/aserrallerios/dev-env /tmp/.dev-env && export GITHUB_TOKEN=... && /tmp/.dev-env/master/bootstrap.sh
```

For testing purposes `bootstrap.sh` allows to define the branch with `-b|--branch <BRANCH>` (default is `master`):

```shell
BRANCH_NAME=...
export GITHUB_TOKEN=... && wget -qO- https://raw.githubusercontent.com/aserrallerios/dev-env/$BRANCH_NAME/bootstrap.sh -O bootstrap.sh && chmod u+x bootstrap.sh && ./bootstrap.sh -b $BRANCH_NAME
```

# Disclaimer

This is just for personal convenience. It's not intended to be highly configurable and I'm most likely not following Ansible's conventions and best practices.

Mostly tested on macOS.

# What to do after running installation

1. Join Syncthing
2. Log into Nextcloud
3. Configure VSCode

## TODO

- [x] Fix bootstrap script exiting after brew commands during the first execution (super weird)
- [ ] Organize files into folders
- [ ] Update recipes to avoid using `command` or `shell`
- [ ] Fix idempotency (OK vs changed)
- [ ] Implement install vs update recipes
- [ ] tmate vs gotty vs showterm vs termshare
- [ ] glances
- [ ] Improve the minimal-install with useful tools (maybe turn the branch into "install for dev", and use master for the comprehensive list of tools)

# License

[MIT License](LICENSE)
