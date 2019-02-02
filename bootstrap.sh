#!/bin/bash
set -euo pipefail

# DEFAULTS
BRANCH="master"

# Use -gt 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use -gt 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to -gt 0 the /etc/hosts part is not recognized ( may be a bug )
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -b|--branch)
    BRANCH="$2"
    shift # past argument
    ;;
    *)
            # unknown option
    ;;
esac
shift # past argument or value
done

# BOOTSTRAP

sudo pacman -S git --noconfirm --needed
sudo pacman -S ansible --noconfirm --needed

if [ ! -d ".dev-env" ]; then
  git clone https://github.com/aserrallerios/dev-env.git .dev-env
fi

cd .dev-env
git checkout ${BRANCH}
git pull

./run.sh
