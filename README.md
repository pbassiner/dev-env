Development Environment Configuration with Ansible
==================================================

[![License: MIT](https://img.shields.io/badge/license-MIT%20License-blue.svg)](https://raw.githubusercontent.com/aserrallerios/dev-env/master/LICENSE)

# Prepare

Log into Github and get an access token. You can use [copypaste.me](https://copypaste.me) to share passwords and snippets between devices.

The Github token is required for the `sensible.dotfiles` installation.

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

Mostly tested on macOS.

# What to do after running installation

1. Join Syncthing
2. Configure VSCode

## TODO

-[ ] Fix idempotency (OK vs changed)
-[ ] Implement install vs update
-[ ] tmate vs gotty vs showterm vs termshare
-[ ] glances

# License

[MIT License](LICENSE)
